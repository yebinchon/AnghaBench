; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_attach_lock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_dcache.c_ocfs2_dentry_attach_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.ocfs2_dentry_lock*, %struct.TYPE_4__ }
%struct.ocfs2_dentry_lock = type { i64, i32, %struct.TYPE_5__, %struct.inode* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.inode = type { i32 }
%struct.TYPE_6__ = type { i64 }

@.str = private unnamed_addr constant [37 x i8] c" \22%pd\22: old parent: %llu, new: %llu\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"parent %llu, ino %llu\0A\00", align 1
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@dentry_attach_lock = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_dentry_attach_lock(%struct.dentry* %0, %struct.inode* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ocfs2_dentry_lock*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %12, align 8
  store %struct.ocfs2_dentry_lock* %13, %struct.ocfs2_dentry_lock** %10, align 8
  %14 = load %struct.dentry*, %struct.dentry** %5, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = getelementptr inbounds %struct.dentry, %struct.dentry* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %24 = call i32 @trace_ocfs2_dentry_attach_lock(i32 %17, i32 %21, i64 %22, %struct.ocfs2_dentry_lock* %23)
  %25 = load %struct.inode*, %struct.inode** %6, align 8
  %26 = icmp ne %struct.inode* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %196

28:                                               ; preds = %3
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call i64 @d_really_is_negative(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load %struct.dentry*, %struct.dentry** %5, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %34, align 8
  %36 = icmp ne %struct.ocfs2_dentry_lock* %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %10, align 8
  %38 = load %struct.dentry*, %struct.dentry** %5, align 8
  %39 = getelementptr inbounds %struct.dentry, %struct.dentry* %38, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %39, align 8
  br label %40

40:                                               ; preds = %37, %32, %28
  %41 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %42 = icmp ne %struct.ocfs2_dentry_lock* %41, null
  br i1 %42, label %43, label %56

43:                                               ; preds = %40
  %44 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %45 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = icmp ne i64 %46, %47
  %49 = zext i1 %48 to i32
  %50 = load %struct.dentry*, %struct.dentry** %5, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %53 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i32 (i32, i8*, ...) @mlog_bug_on_msg(i32 %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %50, i64 %51, i64 %54)
  store i32 0, i32* %4, align 4
  br label %196

56:                                               ; preds = %40
  %57 = load %struct.inode*, %struct.inode** %6, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call %struct.dentry* @ocfs2_find_local_alias(%struct.inode* %57, i64 %58, i32 0)
  store %struct.dentry* %59, %struct.dentry** %9, align 8
  %60 = load %struct.dentry*, %struct.dentry** %9, align 8
  %61 = icmp ne %struct.dentry* %60, null
  br i1 %61, label %62, label %98

62:                                               ; preds = %56
  %63 = load %struct.dentry*, %struct.dentry** %9, align 8
  %64 = getelementptr inbounds %struct.dentry, %struct.dentry* %63, i32 0, i32 0
  %65 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %64, align 8
  store %struct.ocfs2_dentry_lock* %65, %struct.ocfs2_dentry_lock** %10, align 8
  %66 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %67 = icmp ne %struct.ocfs2_dentry_lock* %66, null
  %68 = xor i1 %67, true
  %69 = zext i1 %68 to i32
  %70 = load i64, i64* %7, align 8
  %71 = load %struct.inode*, %struct.inode** %6, align 8
  %72 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = call i32 (i32, i8*, ...) @mlog_bug_on_msg(i32 %69, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i64 %70, i64 %74)
  %76 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %77 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* %7, align 8
  %80 = icmp ne i64 %78, %79
  %81 = zext i1 %80 to i32
  %82 = load %struct.dentry*, %struct.dentry** %5, align 8
  %83 = load i64, i64* %7, align 8
  %84 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %85 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 (i32, i8*, ...) @mlog_bug_on_msg(i32 %81, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %82, i64 %83, i64 %86)
  %88 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %89 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = load i64, i64* %7, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call %struct.TYPE_6__* @OCFS2_I(%struct.inode* %93)
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @trace_ocfs2_dentry_attach_lock_found(i32 %91, i64 %92, i64 %96)
  br label %123

98:                                               ; preds = %56
  %99 = load i32, i32* @GFP_NOFS, align 4
  %100 = call %struct.ocfs2_dentry_lock* @kmalloc(i32 24, i32 %99)
  store %struct.ocfs2_dentry_lock* %100, %struct.ocfs2_dentry_lock** %10, align 8
  %101 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %102 = icmp ne %struct.ocfs2_dentry_lock* %101, null
  br i1 %102, label %109, label %103

103:                                              ; preds = %98
  %104 = load i32, i32* @ENOMEM, align 4
  %105 = sub nsw i32 0, %104
  store i32 %105, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @mlog_errno(i32 %106)
  %108 = load i32, i32* %8, align 4
  store i32 %108, i32* %4, align 4
  br label %196

109:                                              ; preds = %98
  %110 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %111 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %110, i32 0, i32 1
  store i32 0, i32* %111, align 8
  %112 = load %struct.inode*, %struct.inode** %6, align 8
  %113 = call %struct.inode* @igrab(%struct.inode* %112)
  %114 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %115 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %114, i32 0, i32 3
  store %struct.inode* %113, %struct.inode** %115, align 8
  %116 = load i64, i64* %7, align 8
  %117 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %118 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %117, i32 0, i32 0
  store i64 %116, i64* %118, align 8
  %119 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %120 = load i64, i64* %7, align 8
  %121 = load %struct.inode*, %struct.inode** %6, align 8
  %122 = call i32 @ocfs2_dentry_lock_res_init(%struct.ocfs2_dentry_lock* %119, i64 %120, %struct.inode* %121)
  br label %123

123:                                              ; preds = %109, %62
  %124 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %125 = load %struct.dentry*, %struct.dentry** %5, align 8
  %126 = getelementptr inbounds %struct.dentry, %struct.dentry* %125, i32 0, i32 0
  %127 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %126, align 8
  %128 = icmp ne %struct.ocfs2_dentry_lock* %127, null
  br i1 %128, label %129, label %133

129:                                              ; preds = %123
  %130 = load %struct.dentry*, %struct.dentry** %9, align 8
  %131 = icmp ne %struct.dentry* %130, null
  %132 = xor i1 %131, true
  br label %133

133:                                              ; preds = %129, %123
  %134 = phi i1 [ false, %123 ], [ %132, %129 ]
  %135 = zext i1 %134 to i32
  %136 = call i64 @unlikely(i32 %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %149

138:                                              ; preds = %133
  %139 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %140 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %141 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %140, i32 0, i32 3
  %142 = load %struct.inode*, %struct.inode** %141, align 8
  %143 = call i32 @iput(%struct.inode* %142)
  %144 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %145 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %144, i32 0, i32 2
  %146 = call i32 @ocfs2_lock_res_free(%struct.TYPE_5__* %145)
  %147 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %148 = call i32 @kfree(%struct.ocfs2_dentry_lock* %147)
  store i32 0, i32* %4, align 4
  br label %196

149:                                              ; preds = %133
  %150 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %151 = load %struct.dentry*, %struct.dentry** %5, align 8
  %152 = getelementptr inbounds %struct.dentry, %struct.dentry* %151, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* %150, %struct.ocfs2_dentry_lock** %152, align 8
  %153 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %154 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  %157 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %158 = load %struct.dentry*, %struct.dentry** %5, align 8
  %159 = call i32 @ocfs2_dentry_lock(%struct.dentry* %158, i32 0)
  store i32 %159, i32* %8, align 4
  %160 = load i32, i32* %8, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %149
  %163 = load %struct.dentry*, %struct.dentry** %5, align 8
  %164 = call i32 @ocfs2_dentry_unlock(%struct.dentry* %163, i32 0)
  br label %168

165:                                              ; preds = %149
  %166 = load i32, i32* %8, align 4
  %167 = call i32 @mlog_errno(i32 %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load i32, i32* %8, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %192

171:                                              ; preds = %168
  %172 = load %struct.dentry*, %struct.dentry** %9, align 8
  %173 = icmp ne %struct.dentry* %172, null
  br i1 %173, label %192, label %174

174:                                              ; preds = %171
  %175 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %176 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %175, i32 0, i32 2
  %177 = call i32 @ocfs2_lock_res_free(%struct.TYPE_5__* %176)
  %178 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %179 = getelementptr inbounds %struct.ocfs2_dentry_lock, %struct.ocfs2_dentry_lock* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 8
  %181 = icmp ne i32 %180, 1
  %182 = zext i1 %181 to i32
  %183 = call i32 @BUG_ON(i32 %182)
  %184 = call i32 @spin_lock(i32* @dentry_attach_lock)
  %185 = load %struct.dentry*, %struct.dentry** %5, align 8
  %186 = getelementptr inbounds %struct.dentry, %struct.dentry* %185, i32 0, i32 0
  store %struct.ocfs2_dentry_lock* null, %struct.ocfs2_dentry_lock** %186, align 8
  %187 = call i32 @spin_unlock(i32* @dentry_attach_lock)
  %188 = load %struct.ocfs2_dentry_lock*, %struct.ocfs2_dentry_lock** %10, align 8
  %189 = call i32 @kfree(%struct.ocfs2_dentry_lock* %188)
  %190 = load %struct.inode*, %struct.inode** %6, align 8
  %191 = call i32 @iput(%struct.inode* %190)
  br label %192

192:                                              ; preds = %174, %171, %168
  %193 = load %struct.dentry*, %struct.dentry** %9, align 8
  %194 = call i32 @dput(%struct.dentry* %193)
  %195 = load i32, i32* %8, align 4
  store i32 %195, i32* %4, align 4
  br label %196

196:                                              ; preds = %192, %138, %103, %43, %27
  %197 = load i32, i32* %4, align 4
  ret i32 %197
}

declare dso_local i32 @trace_ocfs2_dentry_attach_lock(i32, i32, i64, %struct.ocfs2_dentry_lock*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i32 @mlog_bug_on_msg(i32, i8*, ...) #1

declare dso_local %struct.dentry* @ocfs2_find_local_alias(%struct.inode*, i64, i32) #1

declare dso_local %struct.TYPE_6__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @trace_ocfs2_dentry_attach_lock_found(i32, i64, i64) #1

declare dso_local %struct.ocfs2_dentry_lock* @kmalloc(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local %struct.inode* @igrab(%struct.inode*) #1

declare dso_local i32 @ocfs2_dentry_lock_res_init(%struct.ocfs2_dentry_lock*, i64, %struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_lock_res_free(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dentry_lock*) #1

declare dso_local i32 @ocfs2_dentry_lock(%struct.dentry*, i32) #1

declare dso_local i32 @ocfs2_dentry_unlock(%struct.dentry*, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
