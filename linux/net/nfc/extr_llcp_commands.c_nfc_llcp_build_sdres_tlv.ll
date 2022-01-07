; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_sdres_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_sdres_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_sdp_tlv = type { i32, i8*, i8*, i32*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@LLCP_TLV_SDRES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfc_llcp_sdp_tlv* @nfc_llcp_build_sdres_tlv(i8* %0, i8* %1) #0 {
  %3 = alloca %struct.nfc_llcp_sdp_tlv*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nfc_llcp_sdp_tlv*, align 8
  %7 = alloca [2 x i8*], align 16
  store i8* %0, i8** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.nfc_llcp_sdp_tlv* @kzalloc(i32 40, i32 %8)
  store %struct.nfc_llcp_sdp_tlv* %9, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %10 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %11 = icmp eq %struct.nfc_llcp_sdp_tlv* %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store %struct.nfc_llcp_sdp_tlv* null, %struct.nfc_llcp_sdp_tlv** %3, align 8
  br label %43

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  store i8* %14, i8** %15, align 16
  %16 = load i8*, i8** %5, align 8
  %17 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 1
  store i8* %16, i8** %17, align 8
  %18 = load i32, i32* @LLCP_TLV_SDRES, align 4
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %7, i64 0, i64 0
  %20 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %21 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %20, i32 0, i32 4
  %22 = call i32* @nfc_llcp_build_tlv(i32 %18, i8** %19, i32 2, i32* %21)
  %23 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %24 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %23, i32 0, i32 3
  store i32* %22, i32** %24, align 8
  %25 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %26 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %25, i32 0, i32 3
  %27 = load i32*, i32** %26, align 8
  %28 = icmp eq i32* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %13
  %30 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %31 = call i32 @kfree(%struct.nfc_llcp_sdp_tlv* %30)
  store %struct.nfc_llcp_sdp_tlv* null, %struct.nfc_llcp_sdp_tlv** %3, align 8
  br label %43

32:                                               ; preds = %13
  %33 = load i8*, i8** %4, align 8
  %34 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %35 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %34, i32 0, i32 2
  store i8* %33, i8** %35, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %38 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %37, i32 0, i32 1
  store i8* %36, i8** %38, align 8
  %39 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  %40 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %39, i32 0, i32 0
  %41 = call i32 @INIT_HLIST_NODE(i32* %40)
  %42 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %6, align 8
  store %struct.nfc_llcp_sdp_tlv* %42, %struct.nfc_llcp_sdp_tlv** %3, align 8
  br label %43

43:                                               ; preds = %32, %29, %12
  %44 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %3, align 8
  ret %struct.nfc_llcp_sdp_tlv* %44
}

declare dso_local %struct.nfc_llcp_sdp_tlv* @kzalloc(i32, i32) #1

declare dso_local i32* @nfc_llcp_build_tlv(i32, i8**, i32, i32*) #1

declare dso_local i32 @kfree(%struct.nfc_llcp_sdp_tlv*) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
