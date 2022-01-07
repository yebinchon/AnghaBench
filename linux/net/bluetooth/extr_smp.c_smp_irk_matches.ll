; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_irk_matches.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_irk_matches.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i32 }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [19 x i8] c"RPA %pMR IRK %*phN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_irk_matches(%struct.hci_dev* %0, i32* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.smp_dev*, align 8
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %13, align 8
  store %struct.l2cap_chan* %14, %struct.l2cap_chan** %8, align 8
  %15 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %16 = icmp ne %struct.l2cap_chan* %15, null
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %19 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %18, i32 0, i32 0
  %20 = load %struct.smp_dev*, %struct.smp_dev** %19, align 8
  %21 = icmp ne %struct.smp_dev* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %17, %3
  store i32 0, i32* %4, align 4
  br label %49

23:                                               ; preds = %17
  %24 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %25 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %24, i32 0, i32 0
  %26 = load %struct.smp_dev*, %struct.smp_dev** %25, align 8
  store %struct.smp_dev* %26, %struct.smp_dev** %9, align 8
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @BT_DBG(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), %struct.TYPE_4__* %27, i32 16, i32* %28)
  %30 = load i32*, i32** %6, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %36 = call i32 @smp_ah(i32* %30, i32* %34, i32* %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %23
  store i32 0, i32* %4, align 4
  br label %49

40:                                               ; preds = %23
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %45 = call i32 @crypto_memneq(i32* %43, i32* %44, i32 3)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %40, %39, %22
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @BT_DBG(i8*, %struct.TYPE_4__*, i32, i32*) #1

declare dso_local i32 @smp_ah(i32*, i32*, i32*) #1

declare dso_local i32 @crypto_memneq(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
