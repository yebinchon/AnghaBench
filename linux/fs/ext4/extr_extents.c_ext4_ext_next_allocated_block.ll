; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_next_allocated_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents.c_ext4_ext_next_allocated_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext4_ext_path = type { i32, %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EXT_MAX_BLOCKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_ext_next_allocated_block(%struct.ext4_ext_path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ext4_ext_path*, align 8
  %4 = alloca i32, align 4
  store %struct.ext4_ext_path* %0, %struct.ext4_ext_path** %3, align 8
  %5 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %6 = icmp eq %struct.ext4_ext_path* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @BUG_ON(i32 %7)
  %9 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %10 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %16 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %15, i32 0, i32 3
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = icmp eq %struct.TYPE_4__* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %14, %1
  br label %22

22:                                               ; preds = %93, %21
  %23 = load i32, i32* %4, align 4
  %24 = icmp sge i32 %23, 0
  br i1 %24, label %25, label %96

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %28 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp eq i32 %26, %29
  br i1 %30, label %31, label %66

31:                                               ; preds = %25
  %32 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = icmp ne %struct.TYPE_4__* %37, null
  br i1 %38, label %39, label %65

39:                                               ; preds = %31
  %40 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %40, i64 %42
  %44 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %43, i32 0, i32 3
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %44, align 8
  %46 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %46, i64 %48
  %50 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call %struct.TYPE_4__* @EXT_LAST_EXTENT(i32 %51)
  %53 = icmp ne %struct.TYPE_4__* %45, %52
  br i1 %53, label %54, label %65

54:                                               ; preds = %39
  %55 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %55, i64 %57
  %59 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i64 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @le32_to_cpu(i32 %63)
  store i32 %64, i32* %2, align 4
  br label %98

65:                                               ; preds = %39, %31
  br label %93

66:                                               ; preds = %25
  %67 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %67, i64 %69
  %71 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %70, i32 0, i32 1
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %71, align 8
  %73 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %73, i64 %75
  %77 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = call %struct.TYPE_3__* @EXT_LAST_INDEX(i32 %78)
  %80 = icmp ne %struct.TYPE_3__* %72, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %66
  %82 = load %struct.ext4_ext_path*, %struct.ext4_ext_path** %3, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %82, i64 %84
  %86 = getelementptr inbounds %struct.ext4_ext_path, %struct.ext4_ext_path* %85, i32 0, i32 1
  %87 = load %struct.TYPE_3__*, %struct.TYPE_3__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i64 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @le32_to_cpu(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %98

92:                                               ; preds = %66
  br label %93

93:                                               ; preds = %92, %65
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, -1
  store i32 %95, i32* %4, align 4
  br label %22

96:                                               ; preds = %22
  %97 = load i32, i32* @EXT_MAX_BLOCKS, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %96, %81, %54, %19
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @EXT_LAST_EXTENT(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_3__* @EXT_LAST_INDEX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
