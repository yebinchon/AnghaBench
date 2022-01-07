; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_xdping_kern.c_xdping_client.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_xdping_kern.c_xdping_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdp_md = type { i64, i64 }
%struct.pinginfo = type { i64, i64, i64*, i64 }
%struct.ethhdr = type { i32 }
%struct.icmphdr = type { i64, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.iphdr = type { i32, i32 }

@ICMP_ECHOREPLY = common dso_local global i32 0, align 4
@XDP_TX = common dso_local global i32 0, align 4
@ping_map = common dso_local global i32 0, align 4
@XDP_PASS = common dso_local global i32 0, align 4
@XDPING_MAX_COUNT = common dso_local global i64 0, align 8
@ICMP_ECHO = common dso_local global i32 0, align 4
@ICMP_ECHO_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdping_client(%struct.xdp_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xdp_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pinginfo*, align 8
  %7 = alloca %struct.ethhdr*, align 8
  %8 = alloca %struct.icmphdr*, align 8
  %9 = alloca %struct.iphdr*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.xdp_md* %0, %struct.xdp_md** %3, align 8
  %15 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %16 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i8*
  store i8* %18, i8** %4, align 8
  %19 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %20 = getelementptr inbounds %struct.xdp_md, %struct.xdp_md* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %5, align 8
  store %struct.pinginfo* null, %struct.pinginfo** %6, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.ethhdr*
  store %struct.ethhdr* %24, %struct.ethhdr** %7, align 8
  %25 = load %struct.xdp_md*, %struct.xdp_md** %3, align 8
  %26 = load i32, i32* @ICMP_ECHOREPLY, align 4
  %27 = call i32 @icmp_check(%struct.xdp_md* %25, i32 %26)
  store i32 %27, i32* %13, align 4
  %28 = load i32, i32* %13, align 4
  %29 = load i32, i32* @XDP_TX, align 4
  %30 = icmp ne i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %13, align 4
  store i32 %32, i32* %2, align 4
  br label %160

33:                                               ; preds = %1
  %34 = load i8*, i8** %5, align 8
  %35 = getelementptr i8, i8* %34, i64 4
  %36 = bitcast i8* %35 to %struct.iphdr*
  store %struct.iphdr* %36, %struct.iphdr** %9, align 8
  %37 = load i8*, i8** %5, align 8
  %38 = getelementptr i8, i8* %37, i64 4
  %39 = getelementptr i8, i8* %38, i64 8
  %40 = bitcast i8* %39 to %struct.icmphdr*
  store %struct.icmphdr* %40, %struct.icmphdr** %8, align 8
  %41 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %42 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %11, align 4
  %44 = call i8* (...) @bpf_ktime_get_ns()
  %45 = ptrtoint i8* %44 to i64
  store i64 %45, i64* %10, align 8
  %46 = call %struct.pinginfo* @bpf_map_lookup_elem(i32* @ping_map, i32* %11)
  store %struct.pinginfo* %46, %struct.pinginfo** %6, align 8
  %47 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %48 = icmp ne %struct.pinginfo* %47, null
  br i1 %48, label %49, label %59

49:                                               ; preds = %33
  %50 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %51 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %54 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %52, %57
  br i1 %58, label %59, label %61

59:                                               ; preds = %49, %33
  %60 = load i32, i32* @XDP_PASS, align 4
  store i32 %60, i32* %2, align 4
  br label %160

61:                                               ; preds = %49
  %62 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %63 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %116

66:                                               ; preds = %61
  store i64 0, i64* %14, align 8
  br label %67

67:                                               ; preds = %81, %66
  %68 = load i64, i64* %14, align 8
  %69 = load i64, i64* @XDPING_MAX_COUNT, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %84

71:                                               ; preds = %67
  %72 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %73 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %72, i32 0, i32 2
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* %14, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %84

80:                                               ; preds = %71
  br label %81

81:                                               ; preds = %80
  %82 = load i64, i64* %14, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %14, align 8
  br label %67, !llvm.loop !2

84:                                               ; preds = %79, %67
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* @XDPING_MAX_COUNT, align 8
  %87 = icmp ult i64 %85, %86
  br i1 %87, label %88, label %103

88:                                               ; preds = %84
  %89 = load i64, i64* %10, align 8
  %90 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %91 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  %94 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %95 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %94, i32 0, i32 2
  %96 = load i64*, i64** %95, align 8
  %97 = load i64, i64* %14, align 8
  %98 = getelementptr inbounds i64, i64* %96, i64 %97
  store i64 %93, i64* %98, align 8
  %99 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %100 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  %101 = load i64, i64* %14, align 8
  %102 = add i64 %101, 1
  store i64 %102, i64* %14, align 8
  br label %103

103:                                              ; preds = %88, %84
  %104 = load i64, i64* %14, align 8
  %105 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %106 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = icmp eq i64 %104, %107
  br i1 %108, label %113, label %109

109:                                              ; preds = %103
  %110 = load i64, i64* %14, align 8
  %111 = load i64, i64* @XDPING_MAX_COUNT, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %109, %103
  %114 = load i32, i32* @XDP_PASS, align 4
  store i32 %114, i32* %2, align 4
  br label %160

115:                                              ; preds = %109
  br label %116

116:                                              ; preds = %115, %61
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @swap_src_dst_mac(i8* %117)
  %119 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %120 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %123 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %122, i32 0, i32 1
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %11, align 4
  %125 = load %struct.iphdr*, %struct.iphdr** %9, align 8
  %126 = getelementptr inbounds %struct.iphdr, %struct.iphdr* %125, i32 0, i32 0
  store i32 %124, i32* %126, align 4
  %127 = load i32, i32* @ICMP_ECHO, align 4
  %128 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %129 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %128, i32 0, i32 2
  store i32 %127, i32* %129, align 8
  %130 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %131 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %130, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = call i64 @bpf_ntohs(i64 %134)
  %136 = add nsw i64 %135, 1
  %137 = call i8* @bpf_htons(i64 %136)
  store i8* %137, i8** %12, align 8
  %138 = load i8*, i8** %12, align 8
  %139 = ptrtoint i8* %138 to i64
  %140 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %141 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 0
  store i64 %139, i64* %143, align 8
  %144 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %145 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %144, i32 0, i32 0
  store i64 0, i64* %145, align 8
  %146 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %147 = load i32, i32* @ICMP_ECHO_LEN, align 4
  %148 = call i64 @ipv4_csum(%struct.icmphdr* %146, i32 %147)
  %149 = load %struct.icmphdr*, %struct.icmphdr** %8, align 8
  %150 = getelementptr inbounds %struct.icmphdr, %struct.icmphdr* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i8*, i8** %12, align 8
  %152 = ptrtoint i8* %151 to i64
  %153 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %154 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  %155 = call i8* (...) @bpf_ktime_get_ns()
  %156 = ptrtoint i8* %155 to i64
  %157 = load %struct.pinginfo*, %struct.pinginfo** %6, align 8
  %158 = getelementptr inbounds %struct.pinginfo, %struct.pinginfo* %157, i32 0, i32 1
  store i64 %156, i64* %158, align 8
  %159 = load i32, i32* @XDP_TX, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %116, %113, %59, %31
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local i32 @icmp_check(%struct.xdp_md*, i32) #1

declare dso_local i8* @bpf_ktime_get_ns(...) #1

declare dso_local %struct.pinginfo* @bpf_map_lookup_elem(i32*, i32*) #1

declare dso_local i32 @swap_src_dst_mac(i8*) #1

declare dso_local i8* @bpf_htons(i64) #1

declare dso_local i64 @bpf_ntohs(i64) #1

declare dso_local i64 @ipv4_csum(%struct.icmphdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = distinct !{!2, !3}
!3 = !{!"llvm.loop.unroll.full"}
