; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_convert_zc_to_xdp_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_xdp.c_xdp_convert_zc_to_xdp_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_frame = type { i32, i32, %struct.TYPE_2__, i64, i8* }
%struct.TYPE_2__ = type { i32 }
%struct.xdp_buff = type { i32, i32, i32 }
%struct.page = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@MEM_TYPE_PAGE_ORDER0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xdp_frame* @xdp_convert_zc_to_xdp_frame(%struct.xdp_buff* %0) #0 {
  %2 = alloca %struct.xdp_frame*, align 8
  %3 = alloca %struct.xdp_buff*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xdp_frame*, align 8
  %9 = alloca %struct.page*, align 8
  store %struct.xdp_buff* %0, %struct.xdp_buff** %3, align 8
  %10 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %11 = call i64 @xdp_data_meta_unsupported(%struct.xdp_buff* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %22

14:                                               ; preds = %1
  %15 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %16 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %19 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = sub i32 %17, %20
  br label %22

22:                                               ; preds = %14, %13
  %23 = phi i32 [ 0, %13 ], [ %21, %14 ]
  store i32 %23, i32* %4, align 4
  %24 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %25 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %28 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = sub i32 %26, %29
  %31 = load i32, i32* %4, align 4
  %32 = add i32 %30, %31
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = zext i32 %33 to i64
  %35 = add i64 32, %34
  %36 = load i32, i32* @PAGE_SIZE, align 4
  %37 = sext i32 %36 to i64
  %38 = icmp ugt i64 %35, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %22
  store %struct.xdp_frame* null, %struct.xdp_frame** %2, align 8
  br label %95

40:                                               ; preds = %22
  %41 = call %struct.page* (...) @dev_alloc_page()
  store %struct.page* %41, %struct.page** %9, align 8
  %42 = load %struct.page*, %struct.page** %9, align 8
  %43 = icmp ne %struct.page* %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %40
  store %struct.xdp_frame* null, %struct.xdp_frame** %2, align 8
  br label %95

45:                                               ; preds = %40
  %46 = load %struct.page*, %struct.page** %9, align 8
  %47 = call i8* @page_to_virt(%struct.page* %46)
  store i8* %47, i8** %6, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = bitcast i8* %48 to %struct.xdp_frame*
  store %struct.xdp_frame* %49, %struct.xdp_frame** %8, align 8
  %50 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %51 = call i32 @memset(%struct.xdp_frame* %50, i32 0, i32 32)
  %52 = load i8*, i8** %6, align 8
  %53 = getelementptr i8, i8* %52, i64 32
  store i8* %53, i8** %6, align 8
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %45
  %57 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %58 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  br label %64

60:                                               ; preds = %45
  %61 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %62 = getelementptr inbounds %struct.xdp_buff, %struct.xdp_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  br label %64

64:                                               ; preds = %60, %56
  %65 = phi i32 [ %59, %56 ], [ %63, %60 ]
  %66 = zext i32 %65 to i64
  %67 = inttoptr i64 %66 to i8*
  store i8* %67, i8** %7, align 8
  %68 = load i8*, i8** %6, align 8
  %69 = load i8*, i8** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @memcpy(i8* %68, i8* %69, i32 %70)
  %72 = load i8*, i8** %6, align 8
  %73 = load i32, i32* %4, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr i8, i8* %72, i64 %74
  %76 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %77 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %76, i32 0, i32 4
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* %4, align 4
  %80 = sub i32 %78, %79
  %81 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %82 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  %83 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %84 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %83, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %4, align 4
  %86 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %87 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load i32, i32* @MEM_TYPE_PAGE_ORDER0, align 4
  %89 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  %90 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.xdp_buff*, %struct.xdp_buff** %3, align 8
  %93 = call i32 @xdp_return_buff(%struct.xdp_buff* %92)
  %94 = load %struct.xdp_frame*, %struct.xdp_frame** %8, align 8
  store %struct.xdp_frame* %94, %struct.xdp_frame** %2, align 8
  br label %95

95:                                               ; preds = %64, %44, %39
  %96 = load %struct.xdp_frame*, %struct.xdp_frame** %2, align 8
  ret %struct.xdp_frame* %96
}

declare dso_local i64 @xdp_data_meta_unsupported(%struct.xdp_buff*) #1

declare dso_local %struct.page* @dev_alloc_page(...) #1

declare dso_local i8* @page_to_virt(%struct.page*) #1

declare dso_local i32 @memset(%struct.xdp_frame*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @xdp_return_buff(%struct.xdp_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
