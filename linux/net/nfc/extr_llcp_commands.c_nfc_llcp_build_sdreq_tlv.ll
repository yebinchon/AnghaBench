; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_sdreq_tlv.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_commands.c_nfc_llcp_build_sdreq_tlv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_sdp_tlv = type { i64, i32*, i32*, i32, i32, i8* }

@.str = private unnamed_addr constant [19 x i8] c"uri: %s, len: %zu\0A\00", align 1
@U8_MAX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@LLCP_TLV_SDREQ = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfc_llcp_sdp_tlv* @nfc_llcp_build_sdreq_tlv(i8* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.nfc_llcp_sdp_tlv*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.nfc_llcp_sdp_tlv*, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = load i64, i64* %7, align 8
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8* %9, i64 %10)
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* @U8_MAX, align 4
  %14 = sub nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = icmp ugt i64 %12, %15
  %17 = zext i1 %16 to i32
  %18 = call i64 @WARN_ON_ONCE(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store %struct.nfc_llcp_sdp_tlv* null, %struct.nfc_llcp_sdp_tlv** %4, align 8
  br label %106

21:                                               ; preds = %3
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 40, i32 %22)
  %24 = bitcast i8* %23 to %struct.nfc_llcp_sdp_tlv*
  store %struct.nfc_llcp_sdp_tlv* %24, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %25 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %26 = icmp eq %struct.nfc_llcp_sdp_tlv* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  store %struct.nfc_llcp_sdp_tlv* null, %struct.nfc_llcp_sdp_tlv** %4, align 8
  br label %106

28:                                               ; preds = %21
  %29 = load i64, i64* %7, align 8
  %30 = add i64 %29, 3
  %31 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %32 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load i8*, i8** %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = sub i64 %34, 1
  %36 = getelementptr inbounds i8, i8* %33, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %28
  %41 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %42 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %40, %28
  %46 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %47 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 1
  %50 = trunc i64 %49 to i32
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i32 %50, i32 %51)
  %53 = bitcast i8* %52 to i32*
  %54 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %55 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %54, i32 0, i32 1
  store i32* %53, i32** %55, align 8
  %56 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %57 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = icmp eq i32* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %62 = call i32 @kfree(%struct.nfc_llcp_sdp_tlv* %61)
  store %struct.nfc_llcp_sdp_tlv* null, %struct.nfc_llcp_sdp_tlv** %4, align 8
  br label %106

63:                                               ; preds = %45
  %64 = load i32, i32* @LLCP_TLV_SDREQ, align 4
  %65 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %66 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  store i32 %64, i32* %68, align 4
  %69 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %70 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = sub i64 %71, 2
  %73 = trunc i64 %72 to i32
  %74 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %75 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 %73, i32* %77, align 4
  %78 = load i8*, i8** %5, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %81 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 2
  store i32 %79, i32* %83, align 4
  %84 = load i8*, i8** %5, align 8
  %85 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %86 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %85, i32 0, i32 5
  store i8* %84, i8** %86, align 8
  %87 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %88 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 3
  %91 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %92 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %91, i32 0, i32 2
  store i32* %90, i32** %92, align 8
  %93 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %94 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @memcpy(i32* %95, i8* %96, i64 %97)
  %99 = load i32, i32* @jiffies, align 4
  %100 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %101 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  %103 = getelementptr inbounds %struct.nfc_llcp_sdp_tlv, %struct.nfc_llcp_sdp_tlv* %102, i32 0, i32 3
  %104 = call i32 @INIT_HLIST_NODE(i32* %103)
  %105 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %8, align 8
  store %struct.nfc_llcp_sdp_tlv* %105, %struct.nfc_llcp_sdp_tlv** %4, align 8
  br label %106

106:                                              ; preds = %63, %60, %27, %20
  %107 = load %struct.nfc_llcp_sdp_tlv*, %struct.nfc_llcp_sdp_tlv** %4, align 8
  ret %struct.nfc_llcp_sdp_tlv* %107
}

declare dso_local i32 @pr_debug(i8*, i8*, i64) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.nfc_llcp_sdp_tlv*) #1

declare dso_local i32 @memcpy(i32*, i8*, i64) #1

declare dso_local i32 @INIT_HLIST_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
