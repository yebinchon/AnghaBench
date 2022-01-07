; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_close.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_chan_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { i32, %struct.TYPE_4__*, i32, %struct.l2cap_conn* }
%struct.TYPE_4__ = type { i32 (%struct.l2cap_chan*, i32)*, i32 (%struct.l2cap_chan*)* }
%struct.l2cap_conn = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"chan %p state %s\00", align 1
@L2CAP_CHAN_CONN_ORIENTED = common dso_local global i32 0, align 4
@ACL_LINK = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2cap_chan_close(%struct.l2cap_chan* %0, i32 %1) #0 {
  %3 = alloca %struct.l2cap_chan*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.l2cap_conn*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 3
  %8 = load %struct.l2cap_conn*, %struct.l2cap_conn** %7, align 8
  store %struct.l2cap_conn* %8, %struct.l2cap_conn** %5, align 8
  %9 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %10 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %11 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @state_to_string(i32 %12)
  %14 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %9, i32 %13)
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %16 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %88 [
    i32 128, label %18
    i32 130, label %26
    i32 133, label %26
    i32 131, label %50
    i32 132, label %84
    i32 129, label %84
  ]

18:                                               ; preds = %2
  %19 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %20 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32 (%struct.l2cap_chan*, i32)*, i32 (%struct.l2cap_chan*, i32)** %22, align 8
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %25 = call i32 %23(%struct.l2cap_chan* %24, i32 0)
  br label %96

26:                                               ; preds = %2, %2
  %27 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %28 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = load i32, i32* @L2CAP_CHAN_CONN_ORIENTED, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %45

32:                                               ; preds = %26
  %33 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %34 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %35 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %34, i32 0, i32 1
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32 (%struct.l2cap_chan*)*, i32 (%struct.l2cap_chan*)** %37, align 8
  %39 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %40 = call i32 %38(%struct.l2cap_chan* %39)
  %41 = call i32 @__set_chan_timer(%struct.l2cap_chan* %33, i32 %40)
  %42 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @l2cap_send_disconn_req(%struct.l2cap_chan* %42, i32 %43)
  br label %49

45:                                               ; preds = %26
  %46 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %46, i32 %47)
  br label %49

49:                                               ; preds = %45, %32
  br label %96

50:                                               ; preds = %2
  %51 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %52 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @L2CAP_CHAN_CONN_ORIENTED, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %80

56:                                               ; preds = %50
  %57 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %58 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @ACL_LINK, align 4
  %63 = icmp eq i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %56
  %65 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %66 = call i32 @l2cap_chan_connect_reject(%struct.l2cap_chan* %65)
  br label %79

67:                                               ; preds = %56
  %68 = load %struct.l2cap_conn*, %struct.l2cap_conn** %5, align 8
  %69 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @LE_LINK, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %67
  %76 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %77 = call i32 @l2cap_chan_le_connect_reject(%struct.l2cap_chan* %76)
  br label %78

78:                                               ; preds = %75, %67
  br label %79

79:                                               ; preds = %78, %64
  br label %80

80:                                               ; preds = %79, %50
  %81 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %82 = load i32, i32* %4, align 4
  %83 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %81, i32 %82)
  br label %96

84:                                               ; preds = %2, %2
  %85 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @l2cap_chan_del(%struct.l2cap_chan* %85, i32 %86)
  br label %96

88:                                               ; preds = %2
  %89 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %90 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %89, i32 0, i32 1
  %91 = load %struct.TYPE_4__*, %struct.TYPE_4__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 0
  %93 = load i32 (%struct.l2cap_chan*, i32)*, i32 (%struct.l2cap_chan*, i32)** %92, align 8
  %94 = load %struct.l2cap_chan*, %struct.l2cap_chan** %3, align 8
  %95 = call i32 %93(%struct.l2cap_chan* %94, i32 0)
  br label %96

96:                                               ; preds = %88, %84, %80, %49, %18
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*, i32) #1

declare dso_local i32 @state_to_string(i32) #1

declare dso_local i32 @__set_chan_timer(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_send_disconn_req(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_del(%struct.l2cap_chan*, i32) #1

declare dso_local i32 @l2cap_chan_connect_reject(%struct.l2cap_chan*) #1

declare dso_local i32 @l2cap_chan_le_connect_reject(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
