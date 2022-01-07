; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_unbind_dest.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/ipvs/extr_ip_vs_conn.c_ip_vs_unbind_dest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ip_vs_conn = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.ip_vs_dest* }
%struct.ip_vs_dest = type { i64, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [99 x i8] c"Unbind-dest %s c:%s:%d v:%s:%d d:%s:%d fwd:%c s:%u conn->flags:%X conn->refcnt:%d dest->refcnt:%d\0A\00", align 1
@IP_VS_CONN_F_TEMPLATE = common dso_local global i32 0, align 4
@IP_VS_CONN_F_INACTIVE = common dso_local global i32 0, align 4
@IP_VS_DEST_F_OVERLOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ip_vs_conn*)* @ip_vs_unbind_dest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_vs_unbind_dest(%struct.ip_vs_conn* %0) #0 {
  %2 = alloca %struct.ip_vs_conn*, align 8
  %3 = alloca %struct.ip_vs_dest*, align 8
  store %struct.ip_vs_conn* %0, %struct.ip_vs_conn** %2, align 8
  %4 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %5 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %4, i32 0, i32 12
  %6 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %5, align 8
  store %struct.ip_vs_dest* %6, %struct.ip_vs_dest** %3, align 8
  %7 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %8 = icmp ne %struct.ip_vs_dest* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %148

10:                                               ; preds = %1
  %11 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %12 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %11, i32 0, i32 11
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @ip_vs_proto_name(i32 %13)
  %15 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %16 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %15, i32 0, i32 8
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %19 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %18, i32 0, i32 10
  %20 = call i32 @IP_VS_DBG_ADDR(i32 %17, i32* %19)
  %21 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %22 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %21, i32 0, i32 9
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @ntohs(i32 %23)
  %25 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %26 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %29 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %28, i32 0, i32 7
  %30 = call i32 @IP_VS_DBG_ADDR(i32 %27, i32* %29)
  %31 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %32 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @ntohs(i32 %33)
  %35 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %36 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %35, i32 0, i32 5
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %39 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %38, i32 0, i32 4
  %40 = call i32 @IP_VS_DBG_ADDR(i32 %37, i32* %39)
  %41 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %42 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @ntohs(i32 %43)
  %45 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %46 = call i32 @ip_vs_fwd_tag(%struct.ip_vs_conn* %45)
  %47 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %48 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %51 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %54 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %53, i32 0, i32 1
  %55 = call i32 @refcount_read(i32* %54)
  %56 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %57 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %56, i32 0, i32 6
  %58 = call i32 @refcount_read(i32* %57)
  %59 = call i32 @IP_VS_DBG_BUF(i32 7, i8* getelementptr inbounds ([99 x i8], [99 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %20, i32 %24, i32 %30, i32 %34, i32 %40, i32 %44, i32 %46, i32 %49, i32 %52, i32 %55, i32 %58)
  %60 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %61 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @IP_VS_CONN_F_TEMPLATE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %82, label %66

66:                                               ; preds = %10
  %67 = load %struct.ip_vs_conn*, %struct.ip_vs_conn** %2, align 8
  %68 = getelementptr inbounds %struct.ip_vs_conn, %struct.ip_vs_conn* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @IP_VS_CONN_F_INACTIVE, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %66
  %74 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %75 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %74, i32 0, i32 5
  %76 = call i32 @atomic_dec(i32* %75)
  br label %81

77:                                               ; preds = %66
  %78 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %79 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %78, i32 0, i32 4
  %80 = call i32 @atomic_dec(i32* %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %86

82:                                               ; preds = %10
  %83 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %84 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %83, i32 0, i32 3
  %85 = call i32 @atomic_dec(i32* %84)
  br label %86

86:                                               ; preds = %82, %81
  %87 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %88 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %107

91:                                               ; preds = %86
  %92 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %93 = call i32 @ip_vs_dest_totalconns(%struct.ip_vs_dest* %92)
  %94 = sext i32 %93 to i64
  %95 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %96 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp slt i64 %94, %97
  br i1 %98, label %99, label %106

99:                                               ; preds = %91
  %100 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %103 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 8
  %105 = and i32 %104, %101
  store i32 %105, i32* %103, align 8
  br label %106

106:                                              ; preds = %99, %91
  br label %145

107:                                              ; preds = %86
  %108 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %109 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %108, i32 0, i32 2
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %107
  %113 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %114 = call i32 @ip_vs_dest_totalconns(%struct.ip_vs_dest* %113)
  %115 = mul nsw i32 %114, 4
  %116 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %117 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %118, 3
  %120 = icmp slt i32 %115, %119
  br i1 %120, label %121, label %128

121:                                              ; preds = %112
  %122 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %123 = xor i32 %122, -1
  %124 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %125 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = and i32 %126, %123
  store i32 %127, i32* %125, align 8
  br label %128

128:                                              ; preds = %121, %112
  br label %144

129:                                              ; preds = %107
  %130 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %131 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %143

136:                                              ; preds = %129
  %137 = load i32, i32* @IP_VS_DEST_F_OVERLOAD, align 4
  %138 = xor i32 %137, -1
  %139 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %140 = getelementptr inbounds %struct.ip_vs_dest, %struct.ip_vs_dest* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %136, %129
  br label %144

144:                                              ; preds = %143, %128
  br label %145

145:                                              ; preds = %144, %106
  %146 = load %struct.ip_vs_dest*, %struct.ip_vs_dest** %3, align 8
  %147 = call i32 @ip_vs_dest_put(%struct.ip_vs_dest* %146)
  br label %148

148:                                              ; preds = %145, %9
  ret void
}

declare dso_local i32 @IP_VS_DBG_BUF(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ip_vs_proto_name(i32) #1

declare dso_local i32 @IP_VS_DBG_ADDR(i32, i32*) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @ip_vs_fwd_tag(%struct.ip_vs_conn*) #1

declare dso_local i32 @refcount_read(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @ip_vs_dest_totalconns(%struct.ip_vs_dest*) #1

declare dso_local i32 @ip_vs_dest_put(%struct.ip_vs_dest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
