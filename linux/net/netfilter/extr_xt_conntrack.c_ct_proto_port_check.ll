; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_ct_proto_port_check.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_conntrack.c_ct_proto_port_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xt_conntrack_mtinfo2 = type { i32, i64, i32, i64, i64, i64, i64 }
%struct.nf_conn = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.nf_conntrack_tuple }
%struct.nf_conntrack_tuple = type { %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }

@IP_CT_DIR_ORIGINAL = common dso_local global i64 0, align 8
@XT_CONNTRACK_PROTO = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGSRC_PORT = common dso_local global i32 0, align 4
@XT_CONNTRACK_ORIGDST_PORT = common dso_local global i32 0, align 4
@IP_CT_DIR_REPLY = common dso_local global i64 0, align 8
@XT_CONNTRACK_REPLSRC_PORT = common dso_local global i32 0, align 4
@XT_CONNTRACK_REPLDST_PORT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xt_conntrack_mtinfo2*, %struct.nf_conn*)* @ct_proto_port_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_proto_port_check(%struct.xt_conntrack_mtinfo2* %0, %struct.nf_conn* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xt_conntrack_mtinfo2*, align 8
  %5 = alloca %struct.nf_conn*, align 8
  %6 = alloca %struct.nf_conntrack_tuple*, align 8
  store %struct.xt_conntrack_mtinfo2* %0, %struct.xt_conntrack_mtinfo2** %4, align 8
  store %struct.nf_conn* %1, %struct.nf_conn** %5, align 8
  %7 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %8 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = load i64, i64* @IP_CT_DIR_ORIGINAL, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i64 %10
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %12, %struct.nf_conntrack_tuple** %6, align 8
  %13 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %14 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @XT_CONNTRACK_PROTO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %38

19:                                               ; preds = %2
  %20 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %21 = call i64 @nf_ct_protonum(%struct.nf_conn* %20)
  %22 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %23 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  %26 = zext i1 %25 to i32
  %27 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %28 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %27, i32 0, i32 2
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
  br label %161

38:                                               ; preds = %19, %2
  %39 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %40 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @XT_CONNTRACK_ORIGSRC_PORT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %67

45:                                               ; preds = %38
  %46 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %47 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %52 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp eq i64 %50, %53
  %55 = zext i1 %54 to i32
  %56 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %57 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @XT_CONNTRACK_ORIGSRC_PORT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = xor i32 %55, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %161

67:                                               ; preds = %45, %38
  %68 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %69 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @XT_CONNTRACK_ORIGDST_PORT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %96

74:                                               ; preds = %67
  %75 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %76 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %81 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  %84 = zext i1 %83 to i32
  %85 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %86 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* @XT_CONNTRACK_ORIGDST_PORT, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = xor i32 %84, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %161

96:                                               ; preds = %74, %67
  %97 = load %struct.nf_conn*, %struct.nf_conn** %5, align 8
  %98 = getelementptr inbounds %struct.nf_conn, %struct.nf_conn* %97, i32 0, i32 0
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %98, align 8
  %100 = load i64, i64* @IP_CT_DIR_REPLY, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store %struct.nf_conntrack_tuple* %102, %struct.nf_conntrack_tuple** %6, align 8
  %103 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %104 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @XT_CONNTRACK_REPLSRC_PORT, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %131

109:                                              ; preds = %96
  %110 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %111 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %116 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  %119 = zext i1 %118 to i32
  %120 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %121 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @XT_CONNTRACK_REPLSRC_PORT, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  %126 = xor i1 %125, true
  %127 = zext i1 %126 to i32
  %128 = xor i32 %119, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %131

130:                                              ; preds = %109
  store i32 0, i32* %3, align 4
  br label %161

131:                                              ; preds = %109, %96
  %132 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %133 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = load i32, i32* @XT_CONNTRACK_REPLDST_PORT, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %160

138:                                              ; preds = %131
  %139 = load %struct.nf_conntrack_tuple*, %struct.nf_conntrack_tuple** %6, align 8
  %140 = getelementptr inbounds %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %141, i32 0, i32 0
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %145 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %144, i32 0, i32 6
  %146 = load i64, i64* %145, align 8
  %147 = icmp eq i64 %143, %146
  %148 = zext i1 %147 to i32
  %149 = load %struct.xt_conntrack_mtinfo2*, %struct.xt_conntrack_mtinfo2** %4, align 8
  %150 = getelementptr inbounds %struct.xt_conntrack_mtinfo2, %struct.xt_conntrack_mtinfo2* %149, i32 0, i32 2
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @XT_CONNTRACK_REPLDST_PORT, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  %155 = xor i1 %154, true
  %156 = zext i1 %155 to i32
  %157 = xor i32 %148, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %160

159:                                              ; preds = %138
  store i32 0, i32* %3, align 4
  br label %161

160:                                              ; preds = %138, %131
  store i32 1, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %159, %130, %95, %66, %37
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

declare dso_local i64 @nf_ct_protonum(%struct.nf_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
