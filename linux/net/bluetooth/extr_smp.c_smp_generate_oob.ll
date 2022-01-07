; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_generate_oob.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_smp.c_smp_generate_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.l2cap_chan* }
%struct.l2cap_chan = type { %struct.smp_dev* }
%struct.smp_dev = type { i32, i32, i32, i32*, i32, i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@HCI_USE_DEBUG_KEYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Using debug keys\00", align 1
@debug_sk = common dso_local global i32 0, align 4
@debug_pk = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"OOB Public Key X: %32phN\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"OOB Public Key Y: %32phN\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @smp_generate_oob(%struct.hci_dev* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.l2cap_chan*, align 8
  %9 = alloca %struct.smp_dev*, align 8
  %10 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load %struct.l2cap_chan*, %struct.l2cap_chan** %12, align 8
  store %struct.l2cap_chan* %13, %struct.l2cap_chan** %8, align 8
  %14 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %15 = icmp ne %struct.l2cap_chan* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %3
  %17 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %18 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %17, i32 0, i32 0
  %19 = load %struct.smp_dev*, %struct.smp_dev** %18, align 8
  %20 = icmp ne %struct.smp_dev* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %16, %3
  %22 = load i32, i32* @EOPNOTSUPP, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %116

24:                                               ; preds = %16
  %25 = load %struct.l2cap_chan*, %struct.l2cap_chan** %8, align 8
  %26 = getelementptr inbounds %struct.l2cap_chan, %struct.l2cap_chan* %25, i32 0, i32 0
  %27 = load %struct.smp_dev*, %struct.smp_dev** %26, align 8
  store %struct.smp_dev* %27, %struct.smp_dev** %9, align 8
  %28 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %29 = load i32, i32* @HCI_USE_DEBUG_KEYS, align 4
  %30 = call i64 @hci_dev_test_flag(%struct.hci_dev* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %51

32:                                               ; preds = %24
  %33 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %35 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @debug_sk, align 4
  %38 = call i32 @set_ecdh_privkey(i32 %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %32
  %42 = load i32, i32* %10, align 4
  store i32 %42, i32* %4, align 4
  br label %116

43:                                               ; preds = %32
  %44 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %45 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %44, i32 0, i32 3
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* @debug_pk, align 4
  %48 = call i32 @memcpy(i32* %46, i32 %47, i32 64)
  %49 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %50 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %49, i32 0, i32 0
  store i32 1, i32* %50, align 8
  br label %76

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51, %72
  %53 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %54 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %57 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %56, i32 0, i32 3
  %58 = load i32*, i32** %57, align 8
  %59 = call i32 @generate_ecdh_keys(i32 %55, i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32, i32* %10, align 4
  store i32 %63, i32* %4, align 4
  br label %116

64:                                               ; preds = %52
  %65 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %66 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* @debug_pk, align 4
  %69 = call i64 @crypto_memneq(i32* %67, i32 %68, i32 64)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %73

72:                                               ; preds = %64
  br label %52

73:                                               ; preds = %71
  %74 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %75 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %74, i32 0, i32 0
  store i32 0, i32* %75, align 8
  br label %76

76:                                               ; preds = %73, %43
  %77 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %78 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %77, i32 0, i32 3
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @SMP_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32* %79)
  %81 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %82 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 32
  %85 = call i32 @SMP_DBG(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32* %84)
  %86 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %87 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %86, i32 0, i32 2
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @get_random_bytes(i32 %88, i32 16)
  %90 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %91 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %94 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %97 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %100 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32*, i32** %6, align 8
  %103 = call i32 @smp_f4(i32 %92, i32* %95, i32* %98, i32 %101, i32 0, i32* %102)
  store i32 %103, i32* %10, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %76
  %107 = load i32, i32* %10, align 4
  store i32 %107, i32* %4, align 4
  br label %116

108:                                              ; preds = %76
  %109 = load i32*, i32** %7, align 8
  %110 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %111 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @memcpy(i32* %109, i32 %112, i32 16)
  %114 = load %struct.smp_dev*, %struct.smp_dev** %9, align 8
  %115 = getelementptr inbounds %struct.smp_dev, %struct.smp_dev* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %108, %106, %62, %41, %21
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @BT_DBG(i8*) #1

declare dso_local i32 @set_ecdh_privkey(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @generate_ecdh_keys(i32, i32*) #1

declare dso_local i64 @crypto_memneq(i32*, i32, i32) #1

declare dso_local i32 @SMP_DBG(i8*, i32*) #1

declare dso_local i32 @get_random_bytes(i32, i32) #1

declare dso_local i32 @smp_f4(i32, i32*, i32*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
