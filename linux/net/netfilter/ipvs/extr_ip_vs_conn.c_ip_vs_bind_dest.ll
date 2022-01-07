; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_bind_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i64, i32, i32, i32, i32, i32, i32 }

@IPPROTO_UDP = common dso_local global i64 0, align 8
@IP_VS_CONN_F_ONE_PACKET = common dso_local global i32 0, align 4
@IP_VS_CONN_F_SYNC = common dso_local global i32 0, align 4
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_FWD_MASK = common dso_local global i32 0, align 4
@IP_VS_CONN_F_NOOUTPUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [97 x i8] c"Bind-dest %s c:%s:%d v:%s:%d d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d dest->refcnt:%d\0A\00", align 1
@IP_VS_DEST_F_OVERLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*, %struct.ip_vs_dest*)* @ip_vs_bind_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_bind_dest(%struct.ip_vs_conn* %0, %struct.ip_vs_dest* %1) #0 {
  %3 = alloca %struct.ip_vs_conn*, align 8
  %4 = alloca %struct.ip_vs_dest*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %3, align 8
  store %struct.ip_vs_dest* %1, %struct.ip_vs_dest** %4, align 8
  %7 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %8 = icmp ne %struct.ip_vs_dest* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  br label %150

10:                                               ; preds = %2
  %11 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %12 = call i32 @ip_vs_dest_hold(%struct.ip_vs_dest* %11)
  %13 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %14 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %13, i32 0, i32 6
  %15 = call i32 @atomic_read(i32* %14)
  store i32 %15, i32* %5, align 4
  %16 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %17 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @IPPROTO_UDP, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %26

21:                                               ; preds = %10
  %22 = load i32, i32* @IP_VS_CONN_F_ONE_PACKET, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %5, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %10
  %27 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %28 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @IP_VS_CONN_F_SYNC, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %51

34:                                               ; preds = %26
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* @IP_VS_CONN_F_FWD_MASK, align 4
  %46 = load i32, i32* @IP_VS_CONN_F_NOOUTPUT, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = load i32, i32* %6, align 4
  %50 = and i32 %49, %48
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %44, %26
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %57 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 8
  %58 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %59 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %60 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %59, i32 0, i32 12
  store %struct.ip_vs_dest* %58, %struct.ip_vs_dest** %60, align 8
  %61 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %62 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @ip_vs_proto_name(i64 %63)
  %65 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %66 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %65, i32 0, i32 9
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %69 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %68, i32 0, i32 11
  %70 = call i32 @IP_VS_DBG_ADDR(i32 %67, i32* %69)
  %71 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %72 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %71, i32 0, i32 10
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @ntohs(i32 %73)
  %75 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %76 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %79 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %78, i32 0, i32 8
  %80 = call i32 @IP_VS_DBG_ADDR(i32 %77, i32* %79)
  %81 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %82 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ntohs(i32 %83)
  %85 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %86 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %85, i32 0, i32 6
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %89 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %88, i32 0, i32 5
  %90 = call i32 @IP_VS_DBG_ADDR(i32 %87, i32* %89)
  %91 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %92 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @ntohs(i32 %93)
  %95 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %96 = call i32 @ip_vs_fwd_tag(%struct.ip_vs_conn* %95)
  %97 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %98 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 8
  %100 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %101 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %3, align 8
  %104 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %103, i32 0, i32 2
  %105 = call i32 @refcount_read(i32* %104)
  %106 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %107 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %106, i32 0, i32 5
  %108 = call i32 @refcount_read(i32* %107)
  %109 = call i32 @IP_VS_DBG_BUF(i32 7, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str, i64 0, i64 0), i32 %64, i32 %70, i32 %74, i32 %80, i32 %84, i32 %90, i32 %94, i32 %96, i32 %99, i32 %102, i32 %105, i32 %108)
  %110 = load i32, i32* %6, align 4
  %111 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %112 = and i32 %110, %111
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %128, label %114

114:                                              ; preds = %51
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %114
  %120 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %121 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %120, i32 0, i32 4
  %122 = call i32 @atomic_inc(i32* %121)
  br label %127

123:                                              ; preds = %114
  %124 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %125 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %124, i32 0, i32 3
  %126 = call i32 @atomic_inc(i32* %125)
  br label %127

127:                                              ; preds = %123, %119
  br label %132

128:                                              ; preds = %51
  %129 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %130 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %129, i32 0, i32 2
  %131 = call i32 @atomic_inc(i32* %130)
  br label %132

132:                                              ; preds = %128, %127
  %133 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %134 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %150

137:                                              ; preds = %132
  %138 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %139 = call i64 @ip_vs_dest_totalconns(%struct.ip_vs_dest* %138)
  %140 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %141 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp sge i64 %139, %142
  br i1 %143, label %144, label %150

144:                                              ; preds = %137
  %145 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %146 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %4, align 8
  %147 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 8
  %149 = or i32 %148, %145
  store i32 %149, i32* %147, align 8
  br label %150

150:                                              ; preds = %9, %144, %137, %132
  ret void
}

declare dso_local i32 @ip_vs_dest_hold(%struct.ip_vs_dest*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_proto_name(i64) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_vs_fwd_tag(%struct.ip_vs_conn*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @ip_vs_dest_totalconns(%struct.ip_vs_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
