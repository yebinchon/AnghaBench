; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_namespace.c_nfs_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i8*, i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@rename_lock = common dso_local global i32 0, align 4
@NFS_PATH_CANONICAL = common dso_local global i32 0, align 4
@ENAMETOOLONG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @nfs_path(i8** %0, %struct.dentry* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store i8** %0, i8*** %7, align 8
  store %struct.dentry* %1, %struct.dentry** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  br label %16

16:                                               ; preds = %174, %72, %5
  %17 = load i8*, i8** %9, align 8
  %18 = load i32, i32* %10, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8, i8* %17, i64 %19
  store i8* %20, i8** %12, align 8
  %21 = load i8*, i8** %12, align 8
  %22 = getelementptr inbounds i8, i8* %21, i32 -1
  store i8* %22, i8** %12, align 8
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* %10, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %10, align 4
  %25 = call i32 @read_seqbegin(i32* @rename_lock)
  store i32 %25, i32* %14, align 4
  %26 = call i32 (...) @rcu_read_lock()
  br label %27

27:                                               ; preds = %16, %47
  %28 = load %struct.dentry*, %struct.dentry** %8, align 8
  %29 = getelementptr inbounds %struct.dentry, %struct.dentry* %28, i32 0, i32 1
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = call i64 @IS_ROOT(%struct.dentry* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %27
  br label %68

35:                                               ; preds = %27
  %36 = load %struct.dentry*, %struct.dentry** %8, align 8
  %37 = getelementptr inbounds %struct.dentry, %struct.dentry* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %13, align 4
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, 1
  %42 = load i32, i32* %10, align 4
  %43 = sub nsw i32 %42, %41
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %35
  br label %166

47:                                               ; preds = %35
  %48 = load i32, i32* %13, align 4
  %49 = load i8*, i8** %12, align 8
  %50 = sext i32 %48 to i64
  %51 = sub i64 0, %50
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  store i8* %52, i8** %12, align 8
  %53 = load i8*, i8** %12, align 8
  %54 = load %struct.dentry*, %struct.dentry** %8, align 8
  %55 = getelementptr inbounds %struct.dentry, %struct.dentry* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i8*, i8** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @memcpy(i8* %53, i8* %57, i32 %58)
  %60 = load i8*, i8** %12, align 8
  %61 = getelementptr inbounds i8, i8* %60, i32 -1
  store i8* %61, i8** %12, align 8
  store i8 47, i8* %61, align 1
  %62 = load %struct.dentry*, %struct.dentry** %8, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 1
  %64 = call i32 @spin_unlock(i32* %63)
  %65 = load %struct.dentry*, %struct.dentry** %8, align 8
  %66 = getelementptr inbounds %struct.dentry, %struct.dentry* %65, i32 0, i32 2
  %67 = load %struct.dentry*, %struct.dentry** %66, align 8
  store %struct.dentry* %67, %struct.dentry** %8, align 8
  br label %27

68:                                               ; preds = %34
  %69 = load i32, i32* %14, align 4
  %70 = call i64 @read_seqretry(i32* @rename_lock, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %68
  %73 = load %struct.dentry*, %struct.dentry** %8, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = call i32 @spin_unlock(i32* %74)
  %76 = call i32 (...) @rcu_read_unlock()
  br label %16

77:                                               ; preds = %68
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* @NFS_PATH_CANONICAL, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %99

82:                                               ; preds = %77
  %83 = load i8*, i8** %12, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp ne i32 %85, 47
  br i1 %86, label %87, label %99

87:                                               ; preds = %82
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %10, align 4
  %90 = icmp slt i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %87
  %92 = load %struct.dentry*, %struct.dentry** %8, align 8
  %93 = getelementptr inbounds %struct.dentry, %struct.dentry* %92, i32 0, i32 1
  %94 = call i32 @spin_unlock(i32* %93)
  %95 = call i32 (...) @rcu_read_unlock()
  br label %176

96:                                               ; preds = %87
  %97 = load i8*, i8** %12, align 8
  %98 = getelementptr inbounds i8, i8* %97, i32 -1
  store i8* %98, i8** %12, align 8
  store i8 47, i8* %98, align 1
  br label %99

99:                                               ; preds = %96, %82, %77
  %100 = load i8*, i8** %12, align 8
  %101 = load i8**, i8*** %7, align 8
  store i8* %100, i8** %101, align 8
  %102 = load %struct.dentry*, %struct.dentry** %8, align 8
  %103 = getelementptr inbounds %struct.dentry, %struct.dentry* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %15, align 8
  %105 = load i8*, i8** %15, align 8
  %106 = icmp ne i8* %105, null
  br i1 %106, label %114, label %107

107:                                              ; preds = %99
  %108 = load %struct.dentry*, %struct.dentry** %8, align 8
  %109 = getelementptr inbounds %struct.dentry, %struct.dentry* %108, i32 0, i32 1
  %110 = call i32 @spin_unlock(i32* %109)
  %111 = call i32 (...) @rcu_read_unlock()
  %112 = call i32 @WARN_ON(i32 1)
  %113 = load i8*, i8** %12, align 8
  store i8* %113, i8** %6, align 8
  br label %180

114:                                              ; preds = %99
  %115 = load i8*, i8** %15, align 8
  %116 = call i32 @strlen(i8* %115)
  store i32 %116, i32* %13, align 4
  %117 = load i8*, i8** %12, align 8
  %118 = load i8, i8* %117, align 1
  %119 = sext i8 %118 to i32
  %120 = icmp eq i32 %119, 47
  br i1 %120, label %121, label %140

121:                                              ; preds = %114
  br label %122

122:                                              ; preds = %136, %121
  %123 = load i32, i32* %13, align 4
  %124 = icmp sgt i32 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %122
  %126 = load i8*, i8** %15, align 8
  %127 = load i32, i32* %13, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8, i8* %126, i64 %129
  %131 = load i8, i8* %130, align 1
  %132 = sext i8 %131 to i32
  %133 = icmp eq i32 %132, 47
  br label %134

134:                                              ; preds = %125, %122
  %135 = phi i1 [ false, %122 ], [ %133, %125 ]
  br i1 %135, label %136, label %139

136:                                              ; preds = %134
  %137 = load i32, i32* %13, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %13, align 4
  br label %122

139:                                              ; preds = %134
  br label %140

140:                                              ; preds = %139, %114
  %141 = load i32, i32* %13, align 4
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %10, align 4
  %145 = icmp slt i32 %144, 0
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.dentry*, %struct.dentry** %8, align 8
  %148 = getelementptr inbounds %struct.dentry, %struct.dentry* %147, i32 0, i32 1
  %149 = call i32 @spin_unlock(i32* %148)
  %150 = call i32 (...) @rcu_read_unlock()
  br label %176

151:                                              ; preds = %140
  %152 = load i32, i32* %13, align 4
  %153 = load i8*, i8** %12, align 8
  %154 = sext i32 %152 to i64
  %155 = sub i64 0, %154
  %156 = getelementptr inbounds i8, i8* %153, i64 %155
  store i8* %156, i8** %12, align 8
  %157 = load i8*, i8** %12, align 8
  %158 = load i8*, i8** %15, align 8
  %159 = load i32, i32* %13, align 4
  %160 = call i32 @memcpy(i8* %157, i8* %158, i32 %159)
  %161 = load %struct.dentry*, %struct.dentry** %8, align 8
  %162 = getelementptr inbounds %struct.dentry, %struct.dentry* %161, i32 0, i32 1
  %163 = call i32 @spin_unlock(i32* %162)
  %164 = call i32 (...) @rcu_read_unlock()
  %165 = load i8*, i8** %12, align 8
  store i8* %165, i8** %6, align 8
  br label %180

166:                                              ; preds = %46
  %167 = load %struct.dentry*, %struct.dentry** %8, align 8
  %168 = getelementptr inbounds %struct.dentry, %struct.dentry* %167, i32 0, i32 1
  %169 = call i32 @spin_unlock(i32* %168)
  %170 = call i32 (...) @rcu_read_unlock()
  %171 = load i32, i32* %14, align 4
  %172 = call i64 @read_seqretry(i32* @rename_lock, i32 %171)
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %166
  br label %16

175:                                              ; preds = %166
  br label %176

176:                                              ; preds = %175, %146, %91
  %177 = load i32, i32* @ENAMETOOLONG, align 4
  %178 = sub nsw i32 0, %177
  %179 = call i8* @ERR_PTR(i32 %178)
  store i8* %179, i8** %6, align 8
  br label %180

180:                                              ; preds = %176, %151, %107
  %181 = load i8*, i8** %6, align 8
  ret i8* %181
}

declare dso_local i32 @read_seqbegin(i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @IS_ROOT(%struct.dentry*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @read_seqretry(i32*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
