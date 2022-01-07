; ModuleID = '/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_ipsecrequest.c'
source_filename = "/home/carl/AnghaBench/linux/net/key/extr_af_key.c_parse_ipsecrequest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfrm_policy = type { i32, i32, %struct.xfrm_tmpl* }
%struct.xfrm_tmpl = type { i32, i32, i64, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.sadb_x_ipsecrequest = type { i64, i64, i64, i64, i32 }
%struct.net = type { i32 }
%struct.sockaddr = type { i32 }

@XFRM_MAX_DEPTH = common dso_local global i64 0, align 8
@ELOOP = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@IPSEC_LEVEL_USE = common dso_local global i64 0, align 8
@IPSEC_LEVEL_UNIQUE = common dso_local global i64 0, align 8
@IPSEC_MANUAL_REQID_MAX = common dso_local global i64 0, align 8
@ENOBUFS = common dso_local global i32 0, align 4
@XFRM_MODE_TUNNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfrm_policy*, %struct.sadb_x_ipsecrequest*)* @parse_ipsecrequest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_ipsecrequest(%struct.xfrm_policy* %0, %struct.sadb_x_ipsecrequest* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfrm_policy*, align 8
  %5 = alloca %struct.sadb_x_ipsecrequest*, align 8
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.xfrm_tmpl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.xfrm_policy* %0, %struct.xfrm_policy** %4, align 8
  store %struct.sadb_x_ipsecrequest* %1, %struct.sadb_x_ipsecrequest** %5, align 8
  %10 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %11 = call %struct.net* @xp_net(%struct.xfrm_policy* %10)
  store %struct.net* %11, %struct.net** %6, align 8
  %12 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %13 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %12, i32 0, i32 2
  %14 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %13, align 8
  %15 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %16 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %14, i64 %18
  store %struct.xfrm_tmpl* %19, %struct.xfrm_tmpl** %7, align 8
  %20 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %21 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = load i64, i64* @XFRM_MAX_DEPTH, align 8
  %25 = icmp sge i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load i32, i32* @ELOOP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %149

29:                                               ; preds = %2
  %30 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %31 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %149

37:                                               ; preds = %29
  %38 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %39 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @xfrm_id_proto_valid(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %37
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %149

46:                                               ; preds = %37
  %47 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %48 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %51 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  store i32 %49, i32* %52, align 4
  %53 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %54 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @pfkey_mode_to_xfrm(i64 %55)
  store i32 %56, i32* %8, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %149

61:                                               ; preds = %46
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %64 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 8
  %65 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %66 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IPSEC_LEVEL_USE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %61
  %71 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %72 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %71, i32 0, i32 1
  store i32 1, i32* %72, align 4
  br label %109

73:                                               ; preds = %61
  %74 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %75 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @IPSEC_LEVEL_UNIQUE, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %108

79:                                               ; preds = %73
  %80 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %81 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %84 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  %85 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %86 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IPSEC_MANUAL_REQID_MAX, align 8
  %89 = icmp sgt i64 %87, %88
  br i1 %89, label %90, label %93

90:                                               ; preds = %79
  %91 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %92 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %91, i32 0, i32 2
  store i64 0, i64* %92, align 8
  br label %93

93:                                               ; preds = %90, %79
  %94 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %95 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %107, label %98

98:                                               ; preds = %93
  %99 = load %struct.net*, %struct.net** %6, align 8
  %100 = call i64 @gen_reqid(%struct.net* %99)
  %101 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %102 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = icmp ne i64 %100, 0
  br i1 %103, label %107, label %104

104:                                              ; preds = %98
  %105 = load i32, i32* @ENOBUFS, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %149

107:                                              ; preds = %98, %93
  br label %108

108:                                              ; preds = %107, %73
  br label %109

109:                                              ; preds = %108, %70
  %110 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %111 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* @XFRM_MODE_TUNNEL, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %136

115:                                              ; preds = %109
  %116 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %117 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %116, i64 1
  %118 = bitcast %struct.sadb_x_ipsecrequest* %117 to %struct.sockaddr*
  %119 = load %struct.sadb_x_ipsecrequest*, %struct.sadb_x_ipsecrequest** %5, align 8
  %120 = getelementptr inbounds %struct.sadb_x_ipsecrequest, %struct.sadb_x_ipsecrequest* %119, i32 0, i32 3
  %121 = load i64, i64* %120, align 8
  %122 = sub i64 %121, 40
  %123 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %124 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %123, i32 0, i32 6
  %125 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %126 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %125, i32 0, i32 5
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %129 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %128, i32 0, i32 4
  %130 = call i32 @parse_sockaddr_pair(%struct.sockaddr* %118, i64 %122, i32* %124, i32* %127, i32* %129)
  store i32 %130, i32* %9, align 4
  %131 = load i32, i32* %9, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %115
  %134 = load i32, i32* %9, align 4
  store i32 %134, i32* %3, align 4
  br label %149

135:                                              ; preds = %115
  br label %142

136:                                              ; preds = %109
  %137 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %138 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %141 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 4
  br label %142

142:                                              ; preds = %136, %135
  %143 = load %struct.xfrm_tmpl*, %struct.xfrm_tmpl** %7, align 8
  %144 = getelementptr inbounds %struct.xfrm_tmpl, %struct.xfrm_tmpl* %143, i32 0, i32 3
  store i32 1, i32* %144, align 8
  %145 = load %struct.xfrm_policy*, %struct.xfrm_policy** %4, align 8
  %146 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %146, align 8
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %142, %133, %104, %58, %43, %34, %26
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local %struct.net* @xp_net(%struct.xfrm_policy*) #1

declare dso_local i32 @xfrm_id_proto_valid(i32) #1

declare dso_local i32 @pfkey_mode_to_xfrm(i64) #1

declare dso_local i64 @gen_reqid(%struct.net*) #1

declare dso_local i32 @parse_sockaddr_pair(%struct.sockaddr*, i64, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
