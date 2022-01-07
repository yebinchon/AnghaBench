; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_fill_memcpy_list.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_loader.c_sst_fill_memcpy_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.sst_memcpy_list = type { i32, i32, i32, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.list_head*, i8*, i8*, i32, i32)* @sst_fill_memcpy_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_fill_memcpy_list(%struct.list_head* %0, i8* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sst_memcpy_list*, align 8
  store %struct.list_head* %0, %struct.list_head** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.sst_memcpy_list* @kzalloc(i32 32, i32 %13)
  store %struct.sst_memcpy_list* %14, %struct.sst_memcpy_list** %12, align 8
  %15 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %16 = icmp eq %struct.sst_memcpy_list* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %5
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %6, align 4
  br label %37

20:                                               ; preds = %5
  %21 = load i8*, i8** %8, align 8
  %22 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %23 = getelementptr inbounds %struct.sst_memcpy_list, %struct.sst_memcpy_list* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %26 = getelementptr inbounds %struct.sst_memcpy_list, %struct.sst_memcpy_list* %25, i32 0, i32 3
  store i8* %24, i8** %26, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %29 = getelementptr inbounds %struct.sst_memcpy_list, %struct.sst_memcpy_list* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %32 = getelementptr inbounds %struct.sst_memcpy_list, %struct.sst_memcpy_list* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.sst_memcpy_list*, %struct.sst_memcpy_list** %12, align 8
  %34 = getelementptr inbounds %struct.sst_memcpy_list, %struct.sst_memcpy_list* %33, i32 0, i32 1
  %35 = load %struct.list_head*, %struct.list_head** %7, align 8
  %36 = call i32 @list_add_tail(i32* %34, %struct.list_head* %35)
  store i32 0, i32* %6, align 4
  br label %37

37:                                               ; preds = %20, %17
  %38 = load i32, i32* %6, align 4
  ret i32 %38
}

declare dso_local %struct.sst_memcpy_list* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
