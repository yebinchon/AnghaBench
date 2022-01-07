; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.l2cap_chan = type { i32*, %struct.sock*, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.l2cap_chan* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"sk %p\00", align 1
@L2CAP_CHAN_FIXED = common dso_local global i32 0, align 4
@L2CAP_CHAN_RAW = common dso_local global i32 0, align 4
@L2CAP_CHAN_CONN_LESS = common dso_local global i32 0, align 4
@l2cap_skb_msg_name = common dso_local global i32 0, align 4
@L2CAP_CHAN_CONN_ORIENTED = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_MTU = common dso_local global i32 0, align 4
@disable_ertm = common dso_local global i32 0, align 4
@L2CAP_MODE_ERTM = common dso_local global i32 0, align 4
@CONF_STATE2_DEVICE = common dso_local global i32 0, align 4
@L2CAP_MODE_BASIC = common dso_local global i32 0, align 4
@L2CAP_DEFAULT_FLUSH_TO = common dso_local global i32 0, align 4
@l2cap_chan_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sock*)* @l2cap_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_sock_init(%struct.sock* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.l2cap_chan*, align 8
  %6 = alloca %struct.l2cap_chan*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %9, align 8
  store %struct.l2cap_chan* %10, %struct.l2cap_chan** %5, align 8
  %11 = load %struct.sock*, %struct.sock** %3, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %struct.sock* %11)
  %13 = load %struct.sock*, %struct.sock** %4, align 8
  %14 = icmp ne %struct.sock* %13, null
  br i1 %14, label %15, label %117

15:                                               ; preds = %2
  %16 = load %struct.sock*, %struct.sock** %4, align 8
  %17 = call %struct.TYPE_3__* @l2cap_pi(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %18, align 8
  store %struct.l2cap_chan* %19, %struct.l2cap_chan** %6, align 8
  %20 = load %struct.sock*, %struct.sock** %4, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.sock*, %struct.sock** %3, align 8
  %24 = getelementptr inbounds %struct.sock, %struct.sock* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.sock*, %struct.sock** %4, align 8
  %26 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sock*, %struct.sock** %3, align 8
  %30 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %33 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %32, i32 0, i32 7
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %36 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %35, i32 0, i32 7
  store i32 %34, i32* %36, align 4
  %37 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %38 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %37, i32 0, i32 6
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %41 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %40, i32 0, i32 6
  store i32 %39, i32* %41, align 8
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %43 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %46 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %45, i32 0, i32 5
  store i64 %44, i64* %46, align 8
  %47 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %48 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %51 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %50, i32 0, i32 4
  store i32 %49, i32* %51, align 8
  %52 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %53 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %56 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %55, i32 0, i32 3
  store i32 %54, i32* %56, align 4
  %57 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %58 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %57, i32 0, i32 17
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %61 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %60, i32 0, i32 17
  store i32 %59, i32* %61, align 4
  %62 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %63 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %62, i32 0, i32 16
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %66 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %65, i32 0, i32 16
  store i32 %64, i32* %66, align 8
  %67 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %68 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %67, i32 0, i32 15
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %71 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %70, i32 0, i32 15
  store i32 %69, i32* %71, align 4
  %72 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %73 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %72, i32 0, i32 14
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %76 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %75, i32 0, i32 14
  store i32 %74, i32* %76, align 8
  %77 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %78 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %77, i32 0, i32 13
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %81 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %80, i32 0, i32 13
  store i32 %79, i32* %81, align 4
  %82 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %83 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %82, i32 0, i32 12
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %86 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %85, i32 0, i32 12
  store i32 %84, i32* %86, align 8
  %87 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %88 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %87, i32 0, i32 11
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %91 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 4
  %92 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %93 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %92, i32 0, i32 10
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %96 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %95, i32 0, i32 10
  store i32 %94, i32* %96, align 8
  %97 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %98 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @L2CAP_CHAN_FIXED, align 4
  %101 = icmp eq i32 %99, %100
  br i1 %101, label %102, label %113

102:                                              ; preds = %15
  %103 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %104 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %103, i32 0, i32 8
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %107 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %106, i32 0, i32 8
  store i32 %105, i32* %107, align 8
  %108 = load %struct.l2cap_chan*, %struct.l2cap_chan** %6, align 8
  %109 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %108, i32 0, i32 8
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %112 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %111, i32 0, i32 9
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %102, %15
  %114 = load %struct.sock*, %struct.sock** %4, align 8
  %115 = load %struct.sock*, %struct.sock** %3, align 8
  %116 = call i32 @security_sk_clone(%struct.sock* %114, %struct.sock* %115)
  br label %165

117:                                              ; preds = %2
  %118 = load %struct.sock*, %struct.sock** %3, align 8
  %119 = getelementptr inbounds %struct.sock, %struct.sock* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  switch i32 %120, label %137 [
    i32 130, label %121
    i32 131, label %125
    i32 129, label %133
    i32 128, label %133
  ]

121:                                              ; preds = %117
  %122 = load i32, i32* @L2CAP_CHAN_RAW, align 4
  %123 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %124 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %123, i32 0, i32 7
  store i32 %122, i32* %124, align 4
  br label %137

125:                                              ; preds = %117
  %126 = load i32, i32* @L2CAP_CHAN_CONN_LESS, align 4
  %127 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %128 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %127, i32 0, i32 7
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @l2cap_skb_msg_name, align 4
  %130 = load %struct.sock*, %struct.sock** %3, align 8
  %131 = call %struct.TYPE_4__* @bt_sk(%struct.sock* %130)
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i32 0, i32 0
  store i32 %129, i32* %132, align 4
  br label %137

133:                                              ; preds = %117, %117
  %134 = load i32, i32* @L2CAP_CHAN_CONN_ORIENTED, align 4
  %135 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %136 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %135, i32 0, i32 7
  store i32 %134, i32* %136, align 4
  br label %137

137:                                              ; preds = %117, %133, %125, %121
  %138 = load i32, i32* @L2CAP_DEFAULT_MTU, align 4
  %139 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %140 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %139, i32 0, i32 6
  store i32 %138, i32* %140, align 8
  %141 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %142 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %141, i32 0, i32 5
  store i64 0, i64* %142, align 8
  %143 = load i32, i32* @disable_ertm, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %158, label %145

145:                                              ; preds = %137
  %146 = load %struct.sock*, %struct.sock** %3, align 8
  %147 = getelementptr inbounds %struct.sock, %struct.sock* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = icmp eq i32 %148, 128
  br i1 %149, label %150, label %158

150:                                              ; preds = %145
  %151 = load i32, i32* @L2CAP_MODE_ERTM, align 4
  %152 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %153 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %152, i32 0, i32 3
  store i32 %151, i32* %153, align 4
  %154 = load i32, i32* @CONF_STATE2_DEVICE, align 4
  %155 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %156 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %155, i32 0, i32 4
  %157 = call i32 @set_bit(i32 %154, i32* %156)
  br label %162

158:                                              ; preds = %145, %137
  %159 = load i32, i32* @L2CAP_MODE_BASIC, align 4
  %160 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %161 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %160, i32 0, i32 3
  store i32 %159, i32* %161, align 4
  br label %162

162:                                              ; preds = %158, %150
  %163 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %164 = call i32 @l2cap_chan_set_defaults(%struct.l2cap_chan* %163)
  br label %165

165:                                              ; preds = %162, %113
  %166 = load i32, i32* @L2CAP_DEFAULT_FLUSH_TO, align 4
  %167 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %168 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %167, i32 0, i32 2
  store i32 %166, i32* %168, align 8
  %169 = load %struct.sock*, %struct.sock** %3, align 8
  %170 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %171 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %170, i32 0, i32 1
  store %struct.sock* %169, %struct.sock** %171, align 8
  %172 = load %struct.l2cap_chan*, %struct.l2cap_chan** %5, align 8
  %173 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %172, i32 0, i32 0
  store i32* @l2cap_chan_ops, i32** %173, align 8
  ret void
}

declare dso_local %struct.TYPE_3__* @l2cap_pi(%struct.sock*) #1

declare dso_local i32 @BT_DBG(i8*, %struct.sock*) #1

declare dso_local %struct.TYPE_4__* @bt_sk(%struct.sock*) #1

declare dso_local i32 @security_sk_clone(%struct.sock*, %struct.sock*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @l2cap_chan_set_defaults(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
