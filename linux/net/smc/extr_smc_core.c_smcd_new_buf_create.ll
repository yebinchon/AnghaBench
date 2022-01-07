; ModuleID = '/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcd_new_buf_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/smc/extr_smc_core.c_smcd_new_buf_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smc_buf_desc = type { i32, i8*, i32 }
%struct.smc_link_group = type { i32 }

@SMCD_DMBE_SIZES = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__GFP_NOWARN = common dso_local global i32 0, align 4
@__GFP_NORETRY = common dso_local global i32 0, align 4
@__GFP_NOMEMALLOC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.smc_buf_desc* (%struct.smc_link_group*, i32, i32)* @smcd_new_buf_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.smc_buf_desc* @smcd_new_buf_create(%struct.smc_link_group* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.smc_buf_desc*, align 8
  %5 = alloca %struct.smc_link_group*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.smc_buf_desc*, align 8
  %9 = alloca i32, align 4
  store %struct.smc_link_group* %0, %struct.smc_link_group** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %7, align 4
  %11 = call i64 @smc_compress_bufsize(i32 %10)
  %12 = load i64, i64* @SMCD_DMBE_SIZES, align 8
  %13 = icmp sgt i64 %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @EAGAIN, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.smc_buf_desc* @ERR_PTR(i32 %16)
  store %struct.smc_buf_desc* %17, %struct.smc_buf_desc** %4, align 8
  br label %85

18:                                               ; preds = %3
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i8* @kzalloc(i32 24, i32 %19)
  %21 = bitcast i8* %20 to %struct.smc_buf_desc*
  store %struct.smc_buf_desc* %21, %struct.smc_buf_desc** %8, align 8
  %22 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %23 = icmp ne %struct.smc_buf_desc* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.smc_buf_desc* @ERR_PTR(i32 %26)
  store %struct.smc_buf_desc* %27, %struct.smc_buf_desc** %4, align 8
  br label %85

28:                                               ; preds = %18
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %28
  %32 = load %struct.smc_link_group*, %struct.smc_link_group** %5, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %35 = call i32 @smc_ism_register_dmb(%struct.smc_link_group* %32, i32 %33, %struct.smc_buf_desc* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %31
  %39 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %40 = call i32 @kfree(%struct.smc_buf_desc* %39)
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = call %struct.smc_buf_desc* @ERR_PTR(i32 %42)
  store %struct.smc_buf_desc* %43, %struct.smc_buf_desc** %4, align 8
  br label %85

44:                                               ; preds = %31
  %45 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %46 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %45, i32 0, i32 1
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @virt_to_page(i8* %47)
  %49 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %50 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = sub i64 %52, 4
  %54 = trunc i64 %53 to i32
  %55 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %56 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %83

57:                                               ; preds = %28
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = load i32, i32* @__GFP_NOWARN, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @__GFP_NORETRY, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @__GFP_NOMEMALLOC, align 4
  %65 = or i32 %63, %64
  %66 = call i8* @kzalloc(i32 %58, i32 %65)
  %67 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %68 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %67, i32 0, i32 1
  store i8* %66, i8** %68, align 8
  %69 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %70 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %69, i32 0, i32 1
  %71 = load i8*, i8** %70, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %79, label %73

73:                                               ; preds = %57
  %74 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %75 = call i32 @kfree(%struct.smc_buf_desc* %74)
  %76 = load i32, i32* @EAGAIN, align 4
  %77 = sub nsw i32 0, %76
  %78 = call %struct.smc_buf_desc* @ERR_PTR(i32 %77)
  store %struct.smc_buf_desc* %78, %struct.smc_buf_desc** %4, align 8
  br label %85

79:                                               ; preds = %57
  %80 = load i32, i32* %7, align 4
  %81 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  %82 = getelementptr inbounds %struct.smc_buf_desc, %struct.smc_buf_desc* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 8
  br label %83

83:                                               ; preds = %79, %44
  %84 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %8, align 8
  store %struct.smc_buf_desc* %84, %struct.smc_buf_desc** %4, align 8
  br label %85

85:                                               ; preds = %83, %73, %38, %24, %14
  %86 = load %struct.smc_buf_desc*, %struct.smc_buf_desc** %4, align 8
  ret %struct.smc_buf_desc* %86
}

declare dso_local i64 @smc_compress_bufsize(i32) #1

declare dso_local %struct.smc_buf_desc* @ERR_PTR(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @smc_ism_register_dmb(%struct.smc_link_group*, i32, %struct.smc_buf_desc*) #1

declare dso_local i32 @kfree(%struct.smc_buf_desc*) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
