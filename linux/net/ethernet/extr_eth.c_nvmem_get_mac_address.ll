; ModuleID = '/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_nvmem_get_mac_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/ethernet/extr_eth.c_nvmem_get_mac_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvmem_cell = type opaque

@.str = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nvmem_get_mac_address(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmem_cell*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = call i8* @nvmem_cell_get(%struct.device* %9, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %11 = bitcast i8* %10 to %struct.nvmem_cell*
  store %struct.nvmem_cell* %11, %struct.nvmem_cell** %6, align 8
  %12 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %13 = bitcast %struct.nvmem_cell* %12 to i8*
  %14 = call i64 @IS_ERR(i8* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %18 = bitcast %struct.nvmem_cell* %17 to i8*
  %19 = call i32 @PTR_ERR(i8* %18)
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %2
  %21 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %22 = bitcast %struct.nvmem_cell* %21 to i8*
  %23 = call i8* @nvmem_cell_read(i8* %22, i64* %8)
  store i8* %23, i8** %7, align 8
  %24 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %25 = bitcast %struct.nvmem_cell* %24 to i8*
  %26 = call i32 @nvmem_cell_put(i8* %25)
  %27 = load i8*, i8** %7, align 8
  %28 = call i64 @IS_ERR(i8* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %20
  %31 = load i8*, i8** %7, align 8
  %32 = call i32 @PTR_ERR(i8* %31)
  store i32 %32, i32* %3, align 4
  br label %52

33:                                               ; preds = %20
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* @ETH_ALEN, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = load i8*, i8** %7, align 8
  %39 = call i32 @is_valid_ether_addr(i8* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %37, %33
  %42 = load i8*, i8** %7, align 8
  %43 = call i32 @kfree(i8* %42)
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %52

46:                                               ; preds = %37
  %47 = load i8*, i8** %5, align 8
  %48 = load i8*, i8** %7, align 8
  %49 = call i32 @ether_addr_copy(i8* %47, i8* %48)
  %50 = load i8*, i8** %7, align 8
  %51 = call i32 @kfree(i8* %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %41, %30, %16
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @nvmem_cell_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i8* @nvmem_cell_read(i8*, i64*) #1

declare dso_local i32 @nvmem_cell_put(i8*) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @ether_addr_copy(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
