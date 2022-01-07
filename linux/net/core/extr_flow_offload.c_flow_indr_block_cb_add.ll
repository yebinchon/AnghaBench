; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_cb_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_flow_offload.c_flow_indr_block_cb_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flow_indr_block_cb = type { i32, i8*, i32*, i8* }
%struct.flow_indr_block_dev = type { i32 }

@EEXIST = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.flow_indr_block_cb* (%struct.flow_indr_block_dev*, i8*, i32*, i8*)* @flow_indr_block_cb_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.flow_indr_block_cb* @flow_indr_block_cb_add(%struct.flow_indr_block_dev* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca %struct.flow_indr_block_cb*, align 8
  %6 = alloca %struct.flow_indr_block_dev*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca %struct.flow_indr_block_cb*, align 8
  store %struct.flow_indr_block_dev* %0, %struct.flow_indr_block_dev** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %11 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %6, align 8
  %12 = load i32*, i32** %8, align 8
  %13 = load i8*, i8** %9, align 8
  %14 = call %struct.flow_indr_block_cb* @flow_indr_block_cb_lookup(%struct.flow_indr_block_dev* %11, i32* %12, i8* %13)
  store %struct.flow_indr_block_cb* %14, %struct.flow_indr_block_cb** %10, align 8
  %15 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %16 = icmp ne %struct.flow_indr_block_cb* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %4
  %18 = load i32, i32* @EEXIST, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.flow_indr_block_cb* @ERR_PTR(i32 %19)
  store %struct.flow_indr_block_cb* %20, %struct.flow_indr_block_cb** %5, align 8
  br label %46

21:                                               ; preds = %4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.flow_indr_block_cb* @kzalloc(i32 32, i32 %22)
  store %struct.flow_indr_block_cb* %23, %struct.flow_indr_block_cb** %10, align 8
  %24 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %25 = icmp ne %struct.flow_indr_block_cb* %24, null
  br i1 %25, label %30, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.flow_indr_block_cb* @ERR_PTR(i32 %28)
  store %struct.flow_indr_block_cb* %29, %struct.flow_indr_block_cb** %5, align 8
  br label %46

30:                                               ; preds = %21
  %31 = load i8*, i8** %7, align 8
  %32 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %33 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load i32*, i32** %8, align 8
  %35 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %36 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %35, i32 0, i32 2
  store i32* %34, i32** %36, align 8
  %37 = load i8*, i8** %9, align 8
  %38 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %39 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  %41 = getelementptr inbounds %struct.flow_indr_block_cb, %struct.flow_indr_block_cb* %40, i32 0, i32 0
  %42 = load %struct.flow_indr_block_dev*, %struct.flow_indr_block_dev** %6, align 8
  %43 = getelementptr inbounds %struct.flow_indr_block_dev, %struct.flow_indr_block_dev* %42, i32 0, i32 0
  %44 = call i32 @list_add(i32* %41, i32* %43)
  %45 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %10, align 8
  store %struct.flow_indr_block_cb* %45, %struct.flow_indr_block_cb** %5, align 8
  br label %46

46:                                               ; preds = %30, %26, %17
  %47 = load %struct.flow_indr_block_cb*, %struct.flow_indr_block_cb** %5, align 8
  ret %struct.flow_indr_block_cb* %47
}

declare dso_local %struct.flow_indr_block_cb* @flow_indr_block_cb_lookup(%struct.flow_indr_block_dev*, i32*, i8*) #1

declare dso_local %struct.flow_indr_block_cb* @ERR_PTR(i32) #1

declare dso_local %struct.flow_indr_block_cb* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
