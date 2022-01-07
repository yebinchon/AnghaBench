; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_raw_to_bind_addrs.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_bind_addr.c_sctp_raw_to_bind_addrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_bind_addr = type { i32 }
%union.sctp_addr_param = type { i32 }
%struct.sctp_paramhdr = type { i32, i32 }
%union.sctp_addr = type { i32 }
%struct.sctp_af = type { i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)* }

@EINVAL = common dso_local global i32 0, align 4
@SCTP_ADDR_SRC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_raw_to_bind_addrs(%struct.sctp_bind_addr* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.sctp_bind_addr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %union.sctp_addr_param*, align 8
  %12 = alloca %struct.sctp_paramhdr*, align 8
  %13 = alloca %union.sctp_addr, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_bind_addr* %0, %struct.sctp_bind_addr** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  br label %17

17:                                               ; preds = %64, %5
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %76

20:                                               ; preds = %17
  %21 = load i32*, i32** %7, align 8
  %22 = bitcast i32* %21 to %struct.sctp_paramhdr*
  store %struct.sctp_paramhdr* %22, %struct.sctp_paramhdr** %12, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = bitcast i32* %23 to %union.sctp_addr_param*
  store %union.sctp_addr_param* %24, %union.sctp_addr_param** %11, align 8
  %25 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %12, align 8
  %26 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @param_type2af(i32 %27)
  %29 = call %struct.sctp_af* @sctp_get_af_specific(i32 %28)
  store %struct.sctp_af* %29, %struct.sctp_af** %16, align 8
  %30 = load %struct.sctp_af*, %struct.sctp_af** %16, align 8
  %31 = icmp ne %struct.sctp_af* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %14, align 4
  %39 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %40 = call i32 @sctp_bind_addr_clean(%struct.sctp_bind_addr* %39)
  br label %76

41:                                               ; preds = %20
  %42 = load %struct.sctp_af*, %struct.sctp_af** %16, align 8
  %43 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %42, i32 0, i32 0
  %44 = load i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)*, i32 (%union.sctp_addr*, %union.sctp_addr_param*, i32, i32)** %43, align 8
  %45 = load %union.sctp_addr_param*, %union.sctp_addr_param** %11, align 8
  %46 = load i32, i32* %9, align 4
  %47 = call i32 @htons(i32 %46)
  %48 = call i32 %44(%union.sctp_addr* %13, %union.sctp_addr_param* %45, i32 %47, i32 0)
  %49 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %50 = call i32 @sctp_bind_addr_state(%struct.sctp_bind_addr* %49, %union.sctp_addr* %13)
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %53

52:                                               ; preds = %41
  br label %64

53:                                               ; preds = %41
  %54 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %55 = load i32, i32* @SCTP_ADDR_SRC, align 4
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @sctp_add_bind_addr(%struct.sctp_bind_addr* %54, %union.sctp_addr* %13, i32 4, i32 %55, i32 %56)
  store i32 %57, i32* %14, align 4
  %58 = load i32, i32* %14, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %53
  %61 = load %struct.sctp_bind_addr*, %struct.sctp_bind_addr** %6, align 8
  %62 = call i32 @sctp_bind_addr_clean(%struct.sctp_bind_addr* %61)
  br label %76

63:                                               ; preds = %53
  br label %64

64:                                               ; preds = %63, %52
  %65 = load %struct.sctp_paramhdr*, %struct.sctp_paramhdr** %12, align 8
  %66 = getelementptr inbounds %struct.sctp_paramhdr, %struct.sctp_paramhdr* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @ntohs(i32 %67)
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %8, align 4
  %71 = sub nsw i32 %70, %69
  store i32 %71, i32* %8, align 4
  %72 = load i32, i32* %15, align 4
  %73 = load i32*, i32** %7, align 8
  %74 = sext i32 %72 to i64
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  store i32* %75, i32** %7, align 8
  br label %17

76:                                               ; preds = %60, %36, %17
  %77 = load i32, i32* %14, align 4
  ret i32 %77
}

declare dso_local %struct.sctp_af* @sctp_get_af_specific(i32) #1

declare dso_local i32 @param_type2af(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sctp_bind_addr_clean(%struct.sctp_bind_addr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @sctp_bind_addr_state(%struct.sctp_bind_addr*, %union.sctp_addr*) #1

declare dso_local i32 @sctp_add_bind_addr(%struct.sctp_bind_addr*, %union.sctp_addr*, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
