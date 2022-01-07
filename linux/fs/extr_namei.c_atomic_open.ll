; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_namei.c_atomic_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_namei.c_atomic_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nameidata = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.inode* }
%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)* }
%struct.dentry = type { i32 }
%struct.path = type { i32, %struct.dentry* }
%struct.file = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.dentry*, i32 }
%struct.open_flags = type { i32 }

@O_EXCL = common dso_local global i32 0, align 4
@O_CREAT = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@LOOKUP_DIRECTORY = common dso_local global i32 0, align 4
@O_DIRECTORY = common dso_local global i32 0, align 4
@FMODE_OPENED = common dso_local global i32 0, align 4
@FMODE_CREATED = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nameidata*, %struct.dentry*, %struct.path*, %struct.file*, %struct.open_flags*, i32, i32)* @atomic_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atomic_open(%struct.nameidata* %0, %struct.dentry* %1, %struct.path* %2, %struct.file* %3, %struct.open_flags* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.nameidata*, align 8
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.path*, align 8
  %12 = alloca %struct.file*, align 8
  %13 = alloca %struct.open_flags*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.dentry*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.nameidata* %0, %struct.nameidata** %9, align 8
  store %struct.dentry* %1, %struct.dentry** %10, align 8
  store %struct.path* %2, %struct.path** %11, align 8
  store %struct.file* %3, %struct.file** %12, align 8
  store %struct.open_flags* %4, %struct.open_flags** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store %struct.dentry* inttoptr (i64 -1 to %struct.dentry*), %struct.dentry** %16, align 8
  %20 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %21 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.inode*, %struct.inode** %24, align 8
  store %struct.inode* %25, %struct.inode** %17, align 8
  %26 = load i32, i32* %14, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* @O_EXCL, align 4
  %29 = load i32, i32* @O_CREAT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %7
  %34 = load i32, i32* @O_TRUNC, align 4
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %14, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %33, %7
  %39 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %40 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @LOOKUP_DIRECTORY, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %38
  %46 = load i32, i32* @O_DIRECTORY, align 4
  %47 = load i32, i32* %14, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %14, align 4
  br label %49

49:                                               ; preds = %45, %38
  %50 = load %struct.file*, %struct.file** %12, align 8
  %51 = getelementptr inbounds %struct.file, %struct.file* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  store %struct.dentry* inttoptr (i64 -1 to %struct.dentry*), %struct.dentry** %52, align 8
  %53 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %54 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.file*, %struct.file** %12, align 8
  %58 = getelementptr inbounds %struct.file, %struct.file* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.inode*, %struct.inode** %17, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)*, i32 (%struct.inode*, %struct.dentry*, %struct.file*, i32, i32)** %63, align 8
  %65 = load %struct.inode*, %struct.inode** %17, align 8
  %66 = load %struct.dentry*, %struct.dentry** %10, align 8
  %67 = load %struct.file*, %struct.file** %12, align 8
  %68 = load i32, i32* %14, align 4
  %69 = call i32 @open_to_namei_flags(i32 %68)
  %70 = load i32, i32* %15, align 4
  %71 = call i32 %64(%struct.inode* %65, %struct.dentry* %66, %struct.file* %67, i32 %69, i32 %70)
  store i32 %71, i32* %18, align 4
  %72 = load %struct.dentry*, %struct.dentry** %10, align 8
  %73 = call i32 @d_lookup_done(%struct.dentry* %72)
  %74 = load i32, i32* %18, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %176, label %76

76:                                               ; preds = %49
  %77 = load %struct.file*, %struct.file** %12, align 8
  %78 = getelementptr inbounds %struct.file, %struct.file* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* @FMODE_OPENED, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %119

83:                                               ; preds = %76
  %84 = load %struct.open_flags*, %struct.open_flags** %13, align 8
  %85 = getelementptr inbounds %struct.open_flags, %struct.open_flags* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  store i32 %86, i32* %19, align 4
  %87 = load %struct.file*, %struct.file** %12, align 8
  %88 = getelementptr inbounds %struct.file, %struct.file* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @FMODE_CREATED, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %104

93:                                               ; preds = %83
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* @O_CREAT, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  %98 = xor i1 %97, true
  %99 = zext i1 %98 to i32
  %100 = call i64 @WARN_ON(i32 %99)
  %101 = load %struct.inode*, %struct.inode** %17, align 8
  %102 = load %struct.dentry*, %struct.dentry** %10, align 8
  %103 = call i32 @fsnotify_create(%struct.inode* %101, %struct.dentry* %102)
  store i32 0, i32* %19, align 4
  br label %104

104:                                              ; preds = %93, %83
  %105 = load %struct.file*, %struct.file** %12, align 8
  %106 = getelementptr inbounds %struct.file, %struct.file* %105, i32 0, i32 1
  %107 = load i32, i32* %19, align 4
  %108 = load i32, i32* %14, align 4
  %109 = call i32 @may_open(%struct.TYPE_8__* %106, i32 %107, i32 %108)
  store i32 %109, i32* %18, align 4
  %110 = load i32, i32* %18, align 4
  %111 = icmp sgt i32 %110, 0
  %112 = zext i1 %111 to i32
  %113 = call i64 @WARN_ON(i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %104
  %116 = load i32, i32* @EINVAL, align 4
  %117 = sub nsw i32 0, %116
  store i32 %117, i32* %18, align 4
  br label %118

118:                                              ; preds = %115, %104
  br label %175

119:                                              ; preds = %76
  %120 = load %struct.file*, %struct.file** %12, align 8
  %121 = getelementptr inbounds %struct.file, %struct.file* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load %struct.dentry*, %struct.dentry** %122, align 8
  %124 = icmp eq %struct.dentry* %123, inttoptr (i64 -1 to %struct.dentry*)
  %125 = zext i1 %124 to i32
  %126 = call i64 @WARN_ON(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %119
  %129 = load i32, i32* @EIO, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %18, align 4
  br label %174

131:                                              ; preds = %119
  %132 = load %struct.file*, %struct.file** %12, align 8
  %133 = getelementptr inbounds %struct.file, %struct.file* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 0
  %135 = load %struct.dentry*, %struct.dentry** %134, align 8
  %136 = icmp ne %struct.dentry* %135, null
  br i1 %136, label %137, label %144

137:                                              ; preds = %131
  %138 = load %struct.dentry*, %struct.dentry** %10, align 8
  %139 = call i32 @dput(%struct.dentry* %138)
  %140 = load %struct.file*, %struct.file** %12, align 8
  %141 = getelementptr inbounds %struct.file, %struct.file* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = load %struct.dentry*, %struct.dentry** %142, align 8
  store %struct.dentry* %143, %struct.dentry** %10, align 8
  br label %144

144:                                              ; preds = %137, %131
  %145 = load %struct.file*, %struct.file** %12, align 8
  %146 = getelementptr inbounds %struct.file, %struct.file* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* @FMODE_CREATED, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load %struct.inode*, %struct.inode** %17, align 8
  %153 = load %struct.dentry*, %struct.dentry** %10, align 8
  %154 = call i32 @fsnotify_create(%struct.inode* %152, %struct.dentry* %153)
  br label %155

155:                                              ; preds = %151, %144
  %156 = load %struct.dentry*, %struct.dentry** %10, align 8
  %157 = call i32 @d_is_negative(%struct.dentry* %156)
  %158 = call i64 @unlikely(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %155
  %161 = load i32, i32* @ENOENT, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %18, align 4
  br label %173

163:                                              ; preds = %155
  %164 = load %struct.dentry*, %struct.dentry** %10, align 8
  %165 = load %struct.path*, %struct.path** %11, align 8
  %166 = getelementptr inbounds %struct.path, %struct.path* %165, i32 0, i32 1
  store %struct.dentry* %164, %struct.dentry** %166, align 8
  %167 = load %struct.nameidata*, %struct.nameidata** %9, align 8
  %168 = getelementptr inbounds %struct.nameidata, %struct.nameidata* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.path*, %struct.path** %11, align 8
  %172 = getelementptr inbounds %struct.path, %struct.path* %171, i32 0, i32 0
  store i32 %170, i32* %172, align 8
  store i32 0, i32* %8, align 4
  br label %180

173:                                              ; preds = %160
  br label %174

174:                                              ; preds = %173, %128
  br label %175

175:                                              ; preds = %174, %118
  br label %176

176:                                              ; preds = %175, %49
  %177 = load %struct.dentry*, %struct.dentry** %10, align 8
  %178 = call i32 @dput(%struct.dentry* %177)
  %179 = load i32, i32* %18, align 4
  store i32 %179, i32* %8, align 4
  br label %180

180:                                              ; preds = %176, %163
  %181 = load i32, i32* %8, align 4
  ret i32 %181
}

declare dso_local i32 @open_to_namei_flags(i32) #1

declare dso_local i32 @d_lookup_done(%struct.dentry*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @fsnotify_create(%struct.inode*, %struct.dentry*) #1

declare dso_local i32 @may_open(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_is_negative(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
