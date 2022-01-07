; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_inode.c_udf_update_extents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.kernel_long_ad = type { i32, %struct.kernel_lb_addr }
%struct.kernel_lb_addr = type { i32 }
%struct.extent_position = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.kernel_long_ad*, i32, i32, %struct.extent_position*)* @udf_update_extents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_update_extents(%struct.inode* %0, %struct.kernel_long_ad* %1, i32 %2, i32 %3, %struct.extent_position* %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.kernel_long_ad*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.extent_position*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.kernel_lb_addr, align 4
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.kernel_long_ad* %1, %struct.kernel_long_ad** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store %struct.extent_position* %4, %struct.extent_position** %10, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %5
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %31, %18
  %20 = load i32, i32* %12, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sub nsw i32 %21, %22
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %28 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @udf_delete_aext(%struct.inode* %26, i32 %29)
  br label %31

31:                                               ; preds = %25
  %32 = load i32, i32* %12, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %12, align 4
  br label %19

34:                                               ; preds = %19
  br label %85

35:                                               ; preds = %5
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %84

39:                                               ; preds = %35
  store i32 0, i32* %12, align 4
  br label %40

40:                                               ; preds = %80, %39
  %41 = load i32, i32* %12, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  %45 = icmp slt i32 %41, %44
  br i1 %45, label %46, label %83

46:                                               ; preds = %40
  %47 = load %struct.inode*, %struct.inode** %6, align 8
  %48 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %49 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %50 = load i32, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %49, i64 %51
  %53 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %52, i32 0, i32 1
  %54 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %55 = load i32, i32* %12, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %54, i64 %56
  %58 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = getelementptr inbounds %struct.extent_position, %struct.extent_position* %48, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.kernel_lb_addr, %struct.kernel_lb_addr* %53, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @udf_insert_aext(%struct.inode* %47, i32 %61, i32 %63, i32 %59)
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %67 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %68 = load i32, i32* %12, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %67, i64 %69
  %71 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %70, i32 0, i32 1
  %72 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %72, i64 %74
  %76 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %75, i32 0, i32 0
  %77 = call i32 @udf_next_aext(%struct.inode* %65, %struct.extent_position* %66, %struct.kernel_lb_addr* %71, i32* %76, i32 1)
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %80

80:                                               ; preds = %46
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %40

83:                                               ; preds = %40
  br label %84

84:                                               ; preds = %83, %35
  br label %85

85:                                               ; preds = %84, %34
  %86 = load i32, i32* %11, align 4
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %109, %85
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %9, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %112

91:                                               ; preds = %87
  %92 = load %struct.inode*, %struct.inode** %6, align 8
  %93 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %94 = call i32 @udf_next_aext(%struct.inode* %92, %struct.extent_position* %93, %struct.kernel_lb_addr* %13, i32* %14, i32 0)
  %95 = load %struct.inode*, %struct.inode** %6, align 8
  %96 = load %struct.extent_position*, %struct.extent_position** %10, align 8
  %97 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %98 = load i32, i32* %12, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %97, i64 %99
  %101 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %100, i32 0, i32 1
  %102 = load %struct.kernel_long_ad*, %struct.kernel_long_ad** %7, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %102, i64 %104
  %106 = getelementptr inbounds %struct.kernel_long_ad, %struct.kernel_long_ad* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @udf_write_aext(%struct.inode* %95, %struct.extent_position* %96, %struct.kernel_lb_addr* %101, i32 %107, i32 1)
  br label %109

109:                                              ; preds = %91
  %110 = load i32, i32* %12, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %12, align 4
  br label %87

112:                                              ; preds = %87
  ret void
}

declare dso_local i32 @udf_delete_aext(%struct.inode*, i32) #1

declare dso_local i32 @udf_insert_aext(%struct.inode*, i32, i32, i32) #1

declare dso_local i32 @udf_next_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32*, i32) #1

declare dso_local i32 @udf_write_aext(%struct.inode*, %struct.extent_position*, %struct.kernel_lb_addr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
