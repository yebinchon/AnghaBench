; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_build_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_nf_synproxy_core.c_synproxy_build_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcphdr = type { i32 }
%struct.synproxy_options = type { i32, i32, i32, i32, i32 }

@NF_SYNPROXY_OPT_MSS = common dso_local global i32 0, align 4
@TCPOPT_MSS = common dso_local global i32 0, align 4
@TCPOLEN_MSS = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_TIMESTAMP = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOPT_SACK_PERM = common dso_local global i32 0, align 4
@TCPOLEN_SACK_PERM = common dso_local global i32 0, align 4
@TCPOPT_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOLEN_TIMESTAMP = common dso_local global i32 0, align 4
@TCPOPT_NOP = common dso_local global i32 0, align 4
@NF_SYNPROXY_OPT_WSCALE = common dso_local global i32 0, align 4
@TCPOPT_WINDOW = common dso_local global i32 0, align 4
@TCPOLEN_WINDOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcphdr*, %struct.synproxy_options*)* @synproxy_build_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @synproxy_build_options(%struct.tcphdr* %0, %struct.synproxy_options* %1) #0 {
  %3 = alloca %struct.tcphdr*, align 8
  %4 = alloca %struct.synproxy_options*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.tcphdr* %0, %struct.tcphdr** %3, align 8
  store %struct.synproxy_options* %1, %struct.synproxy_options** %4, align 8
  %7 = load %struct.tcphdr*, %struct.tcphdr** %3, align 8
  %8 = getelementptr inbounds %struct.tcphdr, %struct.tcphdr* %7, i64 1
  %9 = bitcast %struct.tcphdr* %8 to i32*
  store i32* %9, i32** %5, align 8
  %10 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %11 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NF_SYNPROXY_OPT_MSS, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %2
  %18 = load i32, i32* @TCPOPT_MSS, align 4
  %19 = shl i32 %18, 24
  %20 = load i32, i32* @TCPOLEN_MSS, align 4
  %21 = shl i32 %20, 16
  %22 = or i32 %19, %21
  %23 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %24 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %22, %25
  %27 = call i8* @htonl(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  br label %31

31:                                               ; preds = %17, %2
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @NF_SYNPROXY_OPT_TIMESTAMP, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %86

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %56

41:                                               ; preds = %36
  %42 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %43 = shl i32 %42, 24
  %44 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %45 = shl i32 %44, 16
  %46 = or i32 %43, %45
  %47 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %51 = or i32 %49, %50
  %52 = call i8* @htonl(i32 %51)
  %53 = ptrtoint i8* %52 to i32
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i32 1
  store i32* %55, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %71

56:                                               ; preds = %36
  %57 = load i32, i32* @TCPOPT_NOP, align 4
  %58 = shl i32 %57, 24
  %59 = load i32, i32* @TCPOPT_NOP, align 4
  %60 = shl i32 %59, 16
  %61 = or i32 %58, %60
  %62 = load i32, i32* @TCPOPT_TIMESTAMP, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %61, %63
  %65 = load i32, i32* @TCPOLEN_TIMESTAMP, align 4
  %66 = or i32 %64, %65
  %67 = call i8* @htonl(i32 %66)
  %68 = ptrtoint i8* %67 to i32
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i32 1
  store i32* %70, i32** %5, align 8
  store i32 %68, i32* %69, align 4
  br label %71

71:                                               ; preds = %56, %41
  %72 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %73 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @htonl(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = load i32*, i32** %5, align 8
  %78 = getelementptr inbounds i32, i32* %77, i32 1
  store i32* %78, i32** %5, align 8
  store i32 %76, i32* %77, align 4
  %79 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %80 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @htonl(i32 %81)
  %83 = ptrtoint i8* %82 to i32
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %5, align 8
  store i32 %83, i32* %84, align 4
  br label %107

86:                                               ; preds = %31
  %87 = load i32, i32* %6, align 4
  %88 = load i32, i32* @NF_SYNPROXY_OPT_SACK_PERM, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %106

91:                                               ; preds = %86
  %92 = load i32, i32* @TCPOPT_NOP, align 4
  %93 = shl i32 %92, 24
  %94 = load i32, i32* @TCPOPT_NOP, align 4
  %95 = shl i32 %94, 16
  %96 = or i32 %93, %95
  %97 = load i32, i32* @TCPOPT_SACK_PERM, align 4
  %98 = shl i32 %97, 8
  %99 = or i32 %96, %98
  %100 = load i32, i32* @TCPOLEN_SACK_PERM, align 4
  %101 = or i32 %99, %100
  %102 = call i8* @htonl(i32 %101)
  %103 = ptrtoint i8* %102 to i32
  %104 = load i32*, i32** %5, align 8
  %105 = getelementptr inbounds i32, i32* %104, i32 1
  store i32* %105, i32** %5, align 8
  store i32 %103, i32* %104, align 4
  br label %106

106:                                              ; preds = %91, %86
  br label %107

107:                                              ; preds = %106, %71
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @NF_SYNPROXY_OPT_WSCALE, align 4
  %110 = and i32 %108, %109
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load i32, i32* @TCPOPT_NOP, align 4
  %114 = shl i32 %113, 24
  %115 = load i32, i32* @TCPOPT_WINDOW, align 4
  %116 = shl i32 %115, 16
  %117 = or i32 %114, %116
  %118 = load i32, i32* @TCPOLEN_WINDOW, align 4
  %119 = shl i32 %118, 8
  %120 = or i32 %117, %119
  %121 = load %struct.synproxy_options*, %struct.synproxy_options** %4, align 8
  %122 = getelementptr inbounds %struct.synproxy_options, %struct.synproxy_options* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %120, %123
  %125 = call i8* @htonl(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load i32*, i32** %5, align 8
  %128 = getelementptr inbounds i32, i32* %127, i32 1
  store i32* %128, i32** %5, align 8
  store i32 %126, i32* %127, align 4
  br label %129

129:                                              ; preds = %112, %107
  ret void
}

declare dso_local i8* @htonl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
