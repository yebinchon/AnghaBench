; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_del_chan.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_del_chan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"chan %p\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_chan*)* @smp_del_chan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smp_del_chan(%struct.l2cap_chan* %0) #0 {
  %2 = alloca %struct.l2cap_chan*, align 8
  %3 = alloca %struct.smp_dev*, align 8
  store %struct.l2cap_chan* %0, %struct.l2cap_chan** %2, align 8
  %4 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %5 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.l2cap_chan* %4)
  %6 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %7 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %6, i32 0, i32 0
  %8 = load %struct.smp_dev*, %struct.smp_dev** %7, align 8
  store %struct.smp_dev* %8, %struct.smp_dev** %3, align 8
  %9 = load %struct.smp_dev*, %struct.smp_dev** %3, align 8
  %10 = icmp ne %struct.smp_dev* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %13 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %12, i32 0, i32 0
  store %struct.smp_dev* null, %struct.smp_dev** %13, align 8
  %14 = load %struct.smp_dev*, %struct.smp_dev** %3, align 8
  %15 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @crypto_free_shash(i32 %16)
  %18 = load %struct.smp_dev*, %struct.smp_dev** %3, align 8
  %19 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @crypto_free_kpp(i32 %20)
  %22 = load %struct.smp_dev*, %struct.smp_dev** %3, align 8
  %23 = call i32 @kzfree(%struct.smp_dev* %22)
  br label %24

24:                                               ; preds = %11, %1
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %2, align 8
  %26 = call i32 @l2cap_chan_put(%struct.l2cap_chan* %25)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.l2cap_chan*) #1

declare dso_local i32 @crypto_free_shash(i32) #1

declare dso_local i32 @crypto_free_kpp(i32) #1

declare dso_local i32 @kzfree(%struct.smp_dev*) #1

declare dso_local i32 @l2cap_chan_put(%struct.l2cap_chan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
