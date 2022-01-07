; ModuleID = '/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_iterate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/orangefs/extr_dir.c_orangefs_dir_iterate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.orangefs_dir*, %struct.TYPE_2__ }
%struct.orangefs_dir = type { i32, i64, i64 }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.dir_context = type { i64 }
%struct.orangefs_inode_s = type { i32 }

@PART_SHIFT = common dso_local global i32 0, align 4
@PART_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ORANGEFS_ITERATE_END = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.dir_context*)* @orangefs_dir_iterate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @orangefs_dir_iterate(%struct.file* %0, %struct.dir_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dir_context*, align 8
  %6 = alloca %struct.orangefs_inode_s*, align 8
  %7 = alloca %struct.orangefs_dir*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.dir_context* %1, %struct.dir_context** %5, align 8
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = getelementptr inbounds %struct.dentry, %struct.dentry* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.orangefs_inode_s* @ORANGEFS_I(i32 %16)
  store %struct.orangefs_inode_s* %17, %struct.orangefs_inode_s** %6, align 8
  %18 = load %struct.file*, %struct.file** %4, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load %struct.orangefs_dir*, %struct.orangefs_dir** %19, align 8
  store %struct.orangefs_dir* %20, %struct.orangefs_dir** %7, align 8
  %21 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %22 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %2
  %26 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %27 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  store i32 %28, i32* %3, align 4
  br label %159

29:                                               ; preds = %2
  %30 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %31 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29
  %35 = load %struct.file*, %struct.file** %4, align 8
  %36 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %37 = call i32 @dir_emit_dot(%struct.file* %35, %struct.dir_context* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %3, align 4
  br label %159

40:                                               ; preds = %34
  %41 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %42 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %29
  %46 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %47 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp eq i64 %48, 1
  br i1 %49, label %50, label %62

50:                                               ; preds = %45
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %53 = call i32 @dir_emit_dotdot(%struct.file* %51, %struct.dir_context* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %159

56:                                               ; preds = %50
  %57 = load i32, i32* @PART_SHIFT, align 4
  %58 = shl i32 1, %57
  %59 = sext i32 %58 to i64
  %60 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %61 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %60, i32 0, i32 0
  store i64 %59, i64* %61, align 8
  br label %62

62:                                               ; preds = %56, %45
  %63 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %64 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i32, i32* @PART_MASK, align 4
  %67 = sext i32 %66 to i64
  %68 = and i64 %65, %67
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %62
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %159

73:                                               ; preds = %62
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %99, %73
  %75 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %76 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ORANGEFS_ITERATE_END, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %74
  %81 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %82 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %85 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %84, i32 0, i32 2
  %86 = load i64, i64* %85, align 8
  %87 = icmp sgt i64 %83, %86
  br label %88

88:                                               ; preds = %80, %74
  %89 = phi i1 [ false, %74 ], [ %87, %80 ]
  br i1 %89, label %90, label %100

90:                                               ; preds = %88
  %91 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %6, align 8
  %92 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %93 = load %struct.dentry*, %struct.dentry** %8, align 8
  %94 = call i32 @orangefs_dir_more(%struct.orangefs_inode_s* %91, %struct.orangefs_dir* %92, %struct.dentry* %93)
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  store i32 %98, i32* %3, align 4
  br label %159

99:                                               ; preds = %90
  br label %74

100:                                              ; preds = %88
  %101 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %102 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %101, i32 0, i32 1
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @ORANGEFS_ITERATE_END, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %117

106:                                              ; preds = %100
  %107 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %108 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %111 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = icmp sgt i64 %109, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = load i32, i32* @EIO, align 4
  %116 = sub nsw i32 0, %115
  store i32 %116, i32* %3, align 4
  br label %159

117:                                              ; preds = %106, %100
  %118 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %119 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %122 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %121, i32 0, i32 2
  %123 = load i64, i64* %122, align 8
  %124 = icmp slt i64 %120, %123
  br i1 %124, label %125, label %136

125:                                              ; preds = %117
  %126 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %6, align 8
  %127 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %128 = load %struct.dentry*, %struct.dentry** %8, align 8
  %129 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %130 = call i32 @orangefs_dir_fill(%struct.orangefs_inode_s* %126, %struct.orangefs_dir* %127, %struct.dentry* %128, %struct.dir_context* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %125
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %159

135:                                              ; preds = %125
  br label %136

136:                                              ; preds = %135, %117
  %137 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %138 = getelementptr inbounds %struct.orangefs_dir, %struct.orangefs_dir* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @ORANGEFS_ITERATE_END, align 8
  %141 = icmp ne i64 %139, %140
  br i1 %141, label %142, label %157

142:                                              ; preds = %136
  %143 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %6, align 8
  %144 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %145 = load %struct.dentry*, %struct.dentry** %8, align 8
  %146 = call i32 @orangefs_dir_more(%struct.orangefs_inode_s* %143, %struct.orangefs_dir* %144, %struct.dentry* %145)
  store i32 %146, i32* %9, align 4
  %147 = load i32, i32* %9, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %142
  %150 = load i32, i32* %9, align 4
  store i32 %150, i32* %3, align 4
  br label %159

151:                                              ; preds = %142
  %152 = load %struct.orangefs_inode_s*, %struct.orangefs_inode_s** %6, align 8
  %153 = load %struct.orangefs_dir*, %struct.orangefs_dir** %7, align 8
  %154 = load %struct.dentry*, %struct.dentry** %8, align 8
  %155 = load %struct.dir_context*, %struct.dir_context** %5, align 8
  %156 = call i32 @orangefs_dir_fill(%struct.orangefs_inode_s* %152, %struct.orangefs_dir* %153, %struct.dentry* %154, %struct.dir_context* %155)
  store i32 %156, i32* %9, align 4
  br label %157

157:                                              ; preds = %151, %136
  %158 = load i32, i32* %9, align 4
  store i32 %158, i32* %3, align 4
  br label %159

159:                                              ; preds = %157, %149, %133, %114, %97, %70, %55, %39, %25
  %160 = load i32, i32* %3, align 4
  ret i32 %160
}

declare dso_local %struct.orangefs_inode_s* @ORANGEFS_I(i32) #1

declare dso_local i32 @dir_emit_dot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @dir_emit_dotdot(%struct.file*, %struct.dir_context*) #1

declare dso_local i32 @orangefs_dir_more(%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*) #1

declare dso_local i32 @orangefs_dir_fill(%struct.orangefs_inode_s*, %struct.orangefs_dir*, %struct.dentry*, %struct.dir_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
