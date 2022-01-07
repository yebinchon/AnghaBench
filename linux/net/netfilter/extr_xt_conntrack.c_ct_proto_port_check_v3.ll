; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_ct_proto_port_check_v3.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_ct_proto_port_check_v3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_conntrack_mtinfo3 = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nf_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@XT_CONNTRACK_PROTO = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGSRC_PORT = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGDST_PORT = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@XT_CONNTRACK_REPLSRC_PORT = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLDST_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_conntrack_mtinfo3*, %struct.nf_conn*)* @ct_proto_port_check_v3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_proto_port_check_v3(%struct.xt_conntrack_mtinfo3* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_conntrack_mtinfo3*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.xt_conntrack_mtinfo3* %0, %struct.xt_conntrack_mtinfo3** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %8 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %12, %struct.nf_conntrack_tuple** %6, align 8
  %13 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %14 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XT_CONNTRACK_PROTO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %21 = call i64 @nf_ct_protonum(%struct.nf_conn* %20)
  %22 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %23 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %28 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @XT_CONNTRACK_PROTO, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  %34 = zext i1 %33 to i32
  %35 = xor i32 %26, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %19
  store i32 0, i32* %3, align 4
  br label %157

38:                                               ; preds = %19, %2
  %39 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %40 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XT_CONNTRACK_ORIGSRC_PORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %38
  %46 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %47 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %50 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %49, i32 0, i32 9
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %53 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ntohs(i32 %56)
  %58 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %59 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @XT_CONNTRACK_ORIGSRC_PORT, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @port_match(i32 %48, i32 %51, i32 %57, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %157

66:                                               ; preds = %45, %38
  %67 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %68 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @XT_CONNTRACK_ORIGDST_PORT, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %66
  %74 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %75 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %74, i32 0, i32 8
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %78 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %77, i32 0, i32 7
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %81 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohs(i32 %84)
  %86 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %87 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @XT_CONNTRACK_ORIGDST_PORT, align 4
  %90 = and i32 %88, %89
  %91 = call i32 @port_match(i32 %76, i32 %79, i32 %85, i32 %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %73
  store i32 0, i32* %3, align 4
  br label %157

94:                                               ; preds = %73, %66
  %95 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %96 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %95, i32 0, i32 0
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %100, %struct.nf_conntrack_tuple** %6, align 8
  %101 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %102 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @XT_CONNTRACK_REPLSRC_PORT, align 4
  %105 = and i32 %103, %104
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %128

107:                                              ; preds = %94
  %108 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %109 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %108, i32 0, i32 6
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %112 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %115 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @ntohs(i32 %118)
  %120 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %121 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @XT_CONNTRACK_REPLSRC_PORT, align 4
  %124 = and i32 %122, %123
  %125 = call i32 @port_match(i32 %110, i32 %113, i32 %119, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %157

128:                                              ; preds = %107, %94
  %129 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %130 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @XT_CONNTRACK_REPLDST_PORT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %156

135:                                              ; preds = %128
  %136 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %137 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %140 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %143 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @ntohs(i32 %146)
  %148 = load %struct.xt_conntrack_mtinfo3*, %struct.xt_conntrack_mtinfo3** %4, align 8
  %149 = getelementptr inbounds %struct.xt_conntrack_mtinfo3, %struct.xt_conntrack_mtinfo3* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @XT_CONNTRACK_REPLDST_PORT, align 4
  %152 = and i32 %150, %151
  %153 = call i32 @port_match(i32 %138, i32 %141, i32 %147, i32 %152)
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %156, label %155

155:                                              ; preds = %135
  store i32 0, i32* %3, align 4
  br label %157

156:                                              ; preds = %135, %128
  store i32 1, i32* %3, align 4
  br label %157

157:                                              ; preds = %156, %155, %127, %93, %65, %37
  %158 = load i32, i32* %3, align 4
  ret i32 %158
}

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

declare dso_local i32 @port_match(i32, i32, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
