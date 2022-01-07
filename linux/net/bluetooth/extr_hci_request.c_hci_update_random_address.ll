; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_update_random_address.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_hci_update_random_address.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32* }
%struct.hci_request = type { %struct.hci_dev* }
%struct.hci_dev = type { i32, %struct.TYPE_9__, %struct.TYPE_9__, %struct.TYPE_9__, i32, i32, %struct.TYPE_9__, i32 }

@ADDR_LE_DEV_RANDOM = common dso_local global i32 0, align 4
@HCI_RPA_EXPIRED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed to generate new RPA\00", align 1
@HCI_FORCE_STATIC_ADDR = common dso_local global i32 0, align 4
@BDADDR_ANY = common dso_local global %struct.TYPE_9__* null, align 8
@HCI_BREDR_ENABLED = common dso_local global i32 0, align 4
@HCI_OP_LE_SET_RANDOM_ADDR = common dso_local global i32 0, align 4
@ADDR_LE_DEV_PUBLIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_update_random_address(%struct.hci_request* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.hci_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__, align 8
  store %struct.hci_request* %0, %struct.hci_request** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %15 = getelementptr inbounds %struct.hci_request, %struct.hci_request* %14, i32 0, i32 0
  %16 = load %struct.hci_dev*, %struct.hci_dev** %15, align 8
  store %struct.hci_dev* %16, %struct.hci_dev** %10, align 8
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %65

19:                                               ; preds = %4
  %20 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %21 = load i32*, i32** %9, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %23 = load i32, i32* @HCI_RPA_EXPIRED, align 4
  %24 = call i32 @hci_dev_test_and_clear_flag(%struct.hci_dev* %22, i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %19
  %27 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %28 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %27, i32 0, i32 2
  %29 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 6
  %31 = call i64 @bacmp(%struct.TYPE_9__* %28, %struct.TYPE_9__* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %128

34:                                               ; preds = %26, %19
  %35 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %36 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %37 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 6
  %41 = call i32 @smp_generate_rpa(%struct.hci_dev* %35, i32 %38, %struct.TYPE_9__* %40)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %46 = call i32 @bt_dev_err(%struct.hci_dev* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* %11, align 4
  store i32 %47, i32* %5, align 4
  br label %128

48:                                               ; preds = %34
  %49 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %50 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %51 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %50, i32 0, i32 6
  %52 = call i32 @set_random_addr(%struct.hci_request* %49, %struct.TYPE_9__* %51)
  %53 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %54 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = mul nsw i32 %55, 1000
  %57 = call i32 @msecs_to_jiffies(i32 %56)
  store i32 %57, i32* %12, align 4
  %58 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %62 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %61, i32 0, i32 4
  %63 = load i32, i32* %12, align 4
  %64 = call i32 @queue_delayed_work(i32 %60, i32* %62, i32 %63)
  store i32 0, i32* %5, align 4
  br label %128

65:                                               ; preds = %4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  br label %69

69:                                               ; preds = %68, %81
  %70 = call i32 @get_random_bytes(%struct.TYPE_9__* %13, i32 6)
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %13, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 5
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, 63
  store i32 %75, i32* %73, align 4
  %76 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %77 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %76, i32 0, i32 3
  %78 = call i64 @bacmp(%struct.TYPE_9__* %77, %struct.TYPE_9__* %13)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %69
  br label %82

81:                                               ; preds = %69
  br label %69

82:                                               ; preds = %80
  %83 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %84 = load i32*, i32** %9, align 8
  store i32 %83, i32* %84, align 4
  %85 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %86 = call i32 @set_random_addr(%struct.hci_request* %85, %struct.TYPE_9__* %13)
  store i32 0, i32* %5, align 4
  br label %128

87:                                               ; preds = %65
  %88 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %89 = load i32, i32* @HCI_FORCE_STATIC_ADDR, align 4
  %90 = call i64 @hci_dev_test_flag(%struct.hci_dev* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %109, label %92

92:                                               ; preds = %87
  %93 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %94 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %93, i32 0, i32 3
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BDADDR_ANY, align 8
  %96 = call i64 @bacmp(%struct.TYPE_9__* %94, %struct.TYPE_9__* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %100 = load i32, i32* @HCI_BREDR_ENABLED, align 4
  %101 = call i64 @hci_dev_test_flag(%struct.hci_dev* %99, i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %125, label %103

103:                                              ; preds = %98
  %104 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %105 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %104, i32 0, i32 1
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** @BDADDR_ANY, align 8
  %107 = call i64 @bacmp(%struct.TYPE_9__* %105, %struct.TYPE_9__* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %125

109:                                              ; preds = %103, %92, %87
  %110 = load i32, i32* @ADDR_LE_DEV_RANDOM, align 4
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %113 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %112, i32 0, i32 1
  %114 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %115 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %114, i32 0, i32 2
  %116 = call i64 @bacmp(%struct.TYPE_9__* %113, %struct.TYPE_9__* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %109
  %119 = load %struct.hci_request*, %struct.hci_request** %6, align 8
  %120 = load i32, i32* @HCI_OP_LE_SET_RANDOM_ADDR, align 4
  %121 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  %122 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %121, i32 0, i32 1
  %123 = call i32 @hci_req_add(%struct.hci_request* %119, i32 %120, i32 6, %struct.TYPE_9__* %122)
  br label %124

124:                                              ; preds = %118, %109
  store i32 0, i32* %5, align 4
  br label %128

125:                                              ; preds = %103, %98
  %126 = load i32, i32* @ADDR_LE_DEV_PUBLIC, align 4
  %127 = load i32*, i32** %9, align 8
  store i32 %126, i32* %127, align 4
  store i32 0, i32* %5, align 4
  br label %128

128:                                              ; preds = %125, %124, %82, %48, %44, %33
  %129 = load i32, i32* %5, align 4
  ret i32 %129
}

declare dso_local i32 @hci_dev_test_and_clear_flag(%struct.hci_dev*, i32) #1

declare dso_local i64 @bacmp(%struct.TYPE_9__*, %struct.TYPE_9__*) #1

declare dso_local i32 @smp_generate_rpa(%struct.hci_dev*, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @set_random_addr(%struct.hci_request*, %struct.TYPE_9__*) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @get_random_bytes(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @hci_dev_test_flag(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_req_add(%struct.hci_request*, i32, i32, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
