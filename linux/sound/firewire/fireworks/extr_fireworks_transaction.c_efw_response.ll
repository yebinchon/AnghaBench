; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_efw_response.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/fireworks/extr_fireworks_transaction.c_efw_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_card = type { i32 }
%struct.fw_request = type { i32 }
%struct.snd_efw_transaction = type { i32 }

@RCODE_TYPE_ERROR = common dso_local global i32 0, align 4
@RCODE_DATA_ERROR = common dso_local global i32 0, align 4
@MEMORY_SPACE_EFW_RESPONSE = common dso_local global i64 0, align 8
@RCODE_ADDRESS_ERROR = common dso_local global i32 0, align 4
@SND_EFW_TRANSACTION_USER_SEQNUM_MAX = common dso_local global i64 0, align 8
@snd_efw_resp_buf_debug = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_card*, %struct.fw_request*, i32, i32, i32, i32, i64, i8*, i64, i8*)* @efw_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efw_response(%struct.fw_card* %0, %struct.fw_request* %1, i32 %2, i32 %3, i32 %4, i32 %5, i64 %6, i8* %7, i64 %8, i8* %9) #0 {
  %11 = alloca %struct.fw_card*, align 8
  %12 = alloca %struct.fw_request*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i64, align 8
  store %struct.fw_card* %0, %struct.fw_card** %11, align 8
  store %struct.fw_request* %1, %struct.fw_request** %12, align 8
  store i32 %2, i32* %13, align 4
  store i32 %3, i32* %14, align 4
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i64 %6, i64* %17, align 8
  store i8* %7, i8** %18, align 8
  store i64 %8, i64* %19, align 8
  store i8* %9, i8** %20, align 8
  %24 = load i32, i32* @RCODE_TYPE_ERROR, align 4
  store i32 %24, i32* %21, align 4
  %25 = load i64, i64* %19, align 8
  %26 = icmp ult i64 %25, 4
  br i1 %26, label %27, label %29

27:                                               ; preds = %10
  %28 = load i32, i32* @RCODE_DATA_ERROR, align 4
  store i32 %28, i32* %21, align 4
  br label %72

29:                                               ; preds = %10
  %30 = load i64, i64* %17, align 8
  %31 = load i64, i64* @MEMORY_SPACE_EFW_RESPONSE, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %29
  %34 = load i32, i32* @RCODE_ADDRESS_ERROR, align 4
  store i32 %34, i32* %21, align 4
  br label %72

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35
  %37 = load i8*, i8** %18, align 8
  %38 = bitcast i8* %37 to %struct.snd_efw_transaction*
  %39 = getelementptr inbounds %struct.snd_efw_transaction, %struct.snd_efw_transaction* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @be32_to_cpu(i32 %40)
  store i64 %41, i64* %23, align 8
  %42 = load i64, i64* %23, align 8
  %43 = load i64, i64* @SND_EFW_TRANSACTION_USER_SEQNUM_MAX, align 8
  %44 = add nsw i64 %43, 1
  %45 = icmp sgt i64 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %36
  %47 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load i32, i32* %15, align 4
  %50 = load i8*, i8** %18, align 8
  %51 = load i64, i64* %19, align 8
  %52 = load i64, i64* %23, align 8
  %53 = call i32 @handle_resp_for_kernel(%struct.fw_card* %47, i32 %48, i32 %49, i8* %50, i64 %51, i32* %21, i64 %52)
  %54 = load i64, i64* @snd_efw_resp_buf_debug, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %46
  %57 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %58 = load i32, i32* %16, align 4
  %59 = load i32, i32* %15, align 4
  %60 = load i8*, i8** %18, align 8
  %61 = load i64, i64* %19, align 8
  %62 = call i32 @handle_resp_for_user(%struct.fw_card* %57, i32 %58, i32 %59, i8* %60, i64 %61, i32* %22)
  br label %63

63:                                               ; preds = %56, %46
  br label %71

64:                                               ; preds = %36
  %65 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %66 = load i32, i32* %16, align 4
  %67 = load i32, i32* %15, align 4
  %68 = load i8*, i8** %18, align 8
  %69 = load i64, i64* %19, align 8
  %70 = call i32 @handle_resp_for_user(%struct.fw_card* %65, i32 %66, i32 %67, i8* %68, i64 %69, i32* %21)
  br label %71

71:                                               ; preds = %64, %63
  br label %72

72:                                               ; preds = %71, %33, %27
  %73 = load %struct.fw_card*, %struct.fw_card** %11, align 8
  %74 = load %struct.fw_request*, %struct.fw_request** %12, align 8
  %75 = load i32, i32* %21, align 4
  %76 = call i32 @fw_send_response(%struct.fw_card* %73, %struct.fw_request* %74, i32 %75)
  ret void
}

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @handle_resp_for_kernel(%struct.fw_card*, i32, i32, i8*, i64, i32*, i64) #1

declare dso_local i32 @handle_resp_for_user(%struct.fw_card*, i32, i32, i8*, i64, i32*) #1

declare dso_local i32 @fw_send_response(%struct.fw_card*, %struct.fw_request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
