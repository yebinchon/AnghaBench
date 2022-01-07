; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_check_template.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_check_template.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.netns_ipvs*, %struct.ip_vs_dest* }
%struct.netns_ipvs = type { i32 }
%struct.ip_vs_dest = type { i32 }

@IP_VS_DEST_F_AVAILABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"check_template: dest not available for protocol %s s:%s:%d v:%s:%d -> d:%s:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ip_vs_check_template(%struct.ip_vs_conn* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ip_vs_conn*, align 8
  %5 = alloca %struct.ip_vs_dest*, align 8
  %6 = alloca %struct.ip_vs_dest*, align 8
  %7 = alloca %struct.netns_ipvs*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %4, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %5, align 8
  %8 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %9 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %8, i32 0, i32 10
  %10 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %9, align 8
  store %struct.ip_vs_dest* %10, %struct.ip_vs_dest** %6, align 8
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 9
  %13 = load %struct.netns_ipvs*, %struct.netns_ipvs** %12, align 8
  store %struct.netns_ipvs* %13, %struct.netns_ipvs** %7, align 8
  %14 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %15 = icmp eq %struct.ip_vs_dest* %14, null
  br i1 %15, label %35, label %16

16:                                               ; preds = %2
  %17 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %18 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @IP_VS_DEST_F_AVAILABLE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %35

23:                                               ; preds = %16
  %24 = load %struct.netns_ipvs*, %struct.netns_ipvs** %7, align 8
  %25 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %26 = call i64 @expire_quiescent_template(%struct.netns_ipvs* %24, %struct.ip_vs_dest* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %23
  %29 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %30 = icmp ne %struct.ip_vs_dest* %29, null
  br i1 %30, label %31, label %95

31:                                               ; preds = %28
  %32 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %6, align 8
  %33 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  %34 = icmp ne %struct.ip_vs_dest* %32, %33
  br i1 %34, label %35, label %95

35:                                               ; preds = %31, %23, %16, %2
  %36 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %37 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @ip_vs_proto_name(i32 %38)
  %40 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %41 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %44 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %43, i32 0, i32 7
  %45 = call i32 @IP_VS_DBG_ADDR(i32 %42, i32* %44)
  %46 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %47 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @ntohs(i64 %48)
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 6
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %54 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %53, i32 0, i32 5
  %55 = call i32 @IP_VS_DBG_ADDR(i32 %52, i32* %54)
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @ntohs(i64 %58)
  %60 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %61 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %64 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %63, i32 0, i32 3
  %65 = call i32 @IP_VS_DBG_ADDR(i32 %62, i32* %64)
  %66 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %67 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = call i32 @ntohs(i64 %68)
  %70 = call i32 @IP_VS_DBG_BUF(i32 9, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %45, i32 %49, i32 %55, i32 %59, i32 %65, i32 %69)
  %71 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %72 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = call i64 @htons(i32 65535)
  %75 = icmp ne i64 %73, %74
  br i1 %75, label %76, label %92

76:                                               ; preds = %35
  %77 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %78 = call i64 @ip_vs_conn_unhash(%struct.ip_vs_conn* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %91

80:                                               ; preds = %76
  %81 = call i64 @htons(i32 65535)
  %82 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %83 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %82, i32 0, i32 2
  store i64 %81, i64* %83, align 8
  %84 = call i64 @htons(i32 65535)
  %85 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %86 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %85, i32 0, i32 1
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %88 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %87, i32 0, i32 0
  store i64 0, i64* %88, align 8
  %89 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %90 = call i32 @ip_vs_conn_hash(%struct.ip_vs_conn* %89)
  br label %91

91:                                               ; preds = %80, %76
  br label %92

92:                                               ; preds = %91, %35
  %93 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %4, align 8
  %94 = call i32 @__ip_vs_conn_put(%struct.ip_vs_conn* %93)
  store i32 0, i32* %3, align 4
  br label %96

95:                                               ; preds = %31, %28
  store i32 1, i32* %3, align 4
  br label %96

96:                                               ; preds = %95, %92
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i64 @expire_quiescent_template(%struct.netns_ipvs*, %struct.ip_vs_dest*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_proto_name(i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i64) #1

declare dso_local i64 @htons(i32) #1

declare dso_local i64 @ip_vs_conn_unhash(%struct.ip_vs_conn*) #1

declare dso_local i32 @ip_vs_conn_hash(%struct.ip_vs_conn*) #1

declare dso_local i32 @__ip_vs_conn_put(%struct.ip_vs_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
