; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_d_path.c_prepend_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_d_path.c_prepend_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.vfsmount = type { %struct.dentry* }
%struct.dentry = type { i32, %struct.dentry* }
%struct.mount = type { i32, %struct.vfsmount, i32, i32 }

@mount_lock = common dso_local global i32 0, align 4
@rename_lock = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*, %struct.path*, i8**, i32*)* @prepend_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepend_path(%struct.path* %0, %struct.path* %1, i8** %2, i32* %3) #0 {
  %5 = alloca %struct.path*, align 8
  %6 = alloca %struct.path*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.vfsmount*, align 8
  %11 = alloca %struct.mount*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.dentry*, align 8
  %18 = alloca %struct.mount*, align 8
  store %struct.path* %0, %struct.path** %5, align 8
  store %struct.path* %1, %struct.path** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %19 = call i32 (...) @rcu_read_lock()
  br label %20

20:                                               ; preds = %140, %4
  %21 = call i32 @read_seqbegin_or_lock(i32* @mount_lock, i32* %14)
  store i32 0, i32* %13, align 4
  %22 = call i32 (...) @rcu_read_lock()
  br label %23

23:                                               ; preds = %127, %20
  %24 = load i8**, i8*** %7, align 8
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %15, align 8
  %26 = load i32*, i32** %8, align 8
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %28 = load %struct.path*, %struct.path** %5, align 8
  %29 = getelementptr inbounds %struct.path, %struct.path* %28, i32 0, i32 1
  %30 = load %struct.dentry*, %struct.dentry** %29, align 8
  store %struct.dentry* %30, %struct.dentry** %9, align 8
  %31 = load %struct.path*, %struct.path** %5, align 8
  %32 = getelementptr inbounds %struct.path, %struct.path* %31, i32 0, i32 0
  %33 = load %struct.vfsmount*, %struct.vfsmount** %32, align 8
  store %struct.vfsmount* %33, %struct.vfsmount** %10, align 8
  %34 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %35 = call %struct.mount* @real_mount(%struct.vfsmount* %34)
  store %struct.mount* %35, %struct.mount** %11, align 8
  %36 = call i32 @read_seqbegin_or_lock(i32* @rename_lock, i32* %13)
  br label %37

37:                                               ; preds = %115, %81, %23
  %38 = load %struct.dentry*, %struct.dentry** %9, align 8
  %39 = load %struct.path*, %struct.path** %6, align 8
  %40 = getelementptr inbounds %struct.path, %struct.path* %39, i32 0, i32 1
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  %42 = icmp ne %struct.dentry* %38, %41
  br i1 %42, label %49, label %43

43:                                               ; preds = %37
  %44 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %45 = load %struct.path*, %struct.path** %6, align 8
  %46 = getelementptr inbounds %struct.path, %struct.path* %45, i32 0, i32 0
  %47 = load %struct.vfsmount*, %struct.vfsmount** %46, align 8
  %48 = icmp ne %struct.vfsmount* %44, %47
  br label %49

49:                                               ; preds = %43, %37
  %50 = phi i1 [ true, %37 ], [ %48, %43 ]
  br i1 %50, label %51, label %117

51:                                               ; preds = %49
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %54 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %53, i32 0, i32 0
  %55 = load %struct.dentry*, %struct.dentry** %54, align 8
  %56 = icmp eq %struct.dentry* %52, %55
  br i1 %56, label %61, label %57

57:                                               ; preds = %51
  %58 = load %struct.dentry*, %struct.dentry** %9, align 8
  %59 = call i64 @IS_ROOT(%struct.dentry* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %103

61:                                               ; preds = %57, %51
  %62 = load %struct.mount*, %struct.mount** %11, align 8
  %63 = getelementptr inbounds %struct.mount, %struct.mount* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = call i8* @READ_ONCE(i32 %64)
  %66 = bitcast i8* %65 to %struct.mount*
  store %struct.mount* %66, %struct.mount** %18, align 8
  %67 = load %struct.dentry*, %struct.dentry** %9, align 8
  %68 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %69 = getelementptr inbounds %struct.vfsmount, %struct.vfsmount* %68, i32 0, i32 0
  %70 = load %struct.dentry*, %struct.dentry** %69, align 8
  %71 = icmp ne %struct.dentry* %67, %70
  br i1 %71, label %72, label %77

72:                                               ; preds = %61
  %73 = load i8**, i8*** %7, align 8
  %74 = load i8*, i8** %73, align 8
  store i8* %74, i8** %15, align 8
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  store i32 %76, i32* %16, align 4
  store i32 3, i32* %12, align 4
  br label %117

77:                                               ; preds = %61
  %78 = load %struct.mount*, %struct.mount** %11, align 8
  %79 = load %struct.mount*, %struct.mount** %18, align 8
  %80 = icmp ne %struct.mount* %78, %79
  br i1 %80, label %81, label %90

81:                                               ; preds = %77
  %82 = load %struct.mount*, %struct.mount** %11, align 8
  %83 = getelementptr inbounds %struct.mount, %struct.mount* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = call i8* @READ_ONCE(i32 %84)
  %86 = bitcast i8* %85 to %struct.dentry*
  store %struct.dentry* %86, %struct.dentry** %9, align 8
  %87 = load %struct.mount*, %struct.mount** %18, align 8
  store %struct.mount* %87, %struct.mount** %11, align 8
  %88 = load %struct.mount*, %struct.mount** %11, align 8
  %89 = getelementptr inbounds %struct.mount, %struct.mount* %88, i32 0, i32 1
  store %struct.vfsmount* %89, %struct.vfsmount** %10, align 8
  br label %37

90:                                               ; preds = %77
  %91 = load %struct.vfsmount*, %struct.vfsmount** %10, align 8
  %92 = call i64 @is_mounted(%struct.vfsmount* %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load %struct.mount*, %struct.mount** %11, align 8
  %96 = getelementptr inbounds %struct.mount, %struct.mount* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @is_anon_ns(i32 %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %94
  store i32 1, i32* %12, align 4
  br label %102

101:                                              ; preds = %94, %90
  store i32 2, i32* %12, align 4
  br label %102

102:                                              ; preds = %101, %100
  br label %117

103:                                              ; preds = %57
  %104 = load %struct.dentry*, %struct.dentry** %9, align 8
  %105 = getelementptr inbounds %struct.dentry, %struct.dentry* %104, i32 0, i32 1
  %106 = load %struct.dentry*, %struct.dentry** %105, align 8
  store %struct.dentry* %106, %struct.dentry** %17, align 8
  %107 = load %struct.dentry*, %struct.dentry** %17, align 8
  %108 = call i32 @prefetch(%struct.dentry* %107)
  %109 = load %struct.dentry*, %struct.dentry** %9, align 8
  %110 = getelementptr inbounds %struct.dentry, %struct.dentry* %109, i32 0, i32 0
  %111 = call i32 @prepend_name(i8** %15, i32* %16, i32* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %103
  br label %117

115:                                              ; preds = %103
  %116 = load %struct.dentry*, %struct.dentry** %17, align 8
  store %struct.dentry* %116, %struct.dentry** %9, align 8
  br label %37

117:                                              ; preds = %114, %102, %72, %49
  %118 = load i32, i32* %13, align 4
  %119 = and i32 %118, 1
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %117
  %122 = call i32 (...) @rcu_read_unlock()
  br label %123

123:                                              ; preds = %121, %117
  %124 = load i32, i32* %13, align 4
  %125 = call i64 @need_seqretry(i32* @rename_lock, i32 %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  store i32 1, i32* %13, align 4
  br label %23

128:                                              ; preds = %123
  %129 = load i32, i32* %13, align 4
  %130 = call i32 @done_seqretry(i32* @rename_lock, i32 %129)
  %131 = load i32, i32* %14, align 4
  %132 = and i32 %131, 1
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = call i32 (...) @rcu_read_unlock()
  br label %136

136:                                              ; preds = %134, %128
  %137 = load i32, i32* %14, align 4
  %138 = call i64 @need_seqretry(i32* @mount_lock, i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %136
  store i32 1, i32* %14, align 4
  br label %20

141:                                              ; preds = %136
  %142 = load i32, i32* %14, align 4
  %143 = call i32 @done_seqretry(i32* @mount_lock, i32 %142)
  %144 = load i32, i32* %12, align 4
  %145 = icmp sge i32 %144, 0
  br i1 %145, label %146, label %162

146:                                              ; preds = %141
  %147 = load i8*, i8** %15, align 8
  %148 = load i8**, i8*** %7, align 8
  %149 = load i8*, i8** %148, align 8
  %150 = icmp eq i8* %147, %149
  br i1 %150, label %151, label %162

151:                                              ; preds = %146
  %152 = load i32, i32* %16, align 4
  %153 = add nsw i32 %152, -1
  store i32 %153, i32* %16, align 4
  %154 = icmp slt i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load i32, i32* @ENAMETOOLONG, align 4
  %157 = sub nsw i32 0, %156
  store i32 %157, i32* %12, align 4
  br label %161

158:                                              ; preds = %151
  %159 = load i8*, i8** %15, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 -1
  store i8* %160, i8** %15, align 8
  store i8 47, i8* %160, align 1
  br label %161

161:                                              ; preds = %158, %155
  br label %162

162:                                              ; preds = %161, %146, %141
  %163 = load i8*, i8** %15, align 8
  %164 = load i8**, i8*** %7, align 8
  store i8* %163, i8** %164, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i32*, i32** %8, align 8
  store i32 %165, i32* %166, align 4
  %167 = load i32, i32* %12, align 4
  ret i32 %167
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @read_seqbegin_or_lock(i32*, i32*) #1

declare dso_local %struct.mount* @real_mount(%struct.vfsmount*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i8* @READ_ONCE(i32) #1

declare dso_local i64 @is_mounted(%struct.vfsmount*) #1

declare dso_local i32 @is_anon_ns(i32) #1

declare dso_local i32 @prefetch(%struct.dentry*) #1

declare dso_local i32 @prepend_name(i8**, i32*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i64 @need_seqretry(i32*, i32) #1

declare dso_local i32 @done_seqretry(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
