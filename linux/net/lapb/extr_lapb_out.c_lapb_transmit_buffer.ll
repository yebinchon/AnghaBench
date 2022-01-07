; ModuleID = '/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_transmit_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/net/lapb/extr_lapb_out.c_lapb_transmit_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lapb_cb = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }

@LAPB_MLP = common dso_local global i32 0, align 4
@LAPB_DCE = common dso_local global i32 0, align 4
@LAPB_COMMAND = common dso_local global i32 0, align 4
@LAPB_ADDR_C = common dso_local global i8 0, align 1
@LAPB_RESPONSE = common dso_local global i32 0, align 4
@LAPB_ADDR_D = common dso_local global i8 0, align 1
@LAPB_ADDR_A = common dso_local global i8 0, align 1
@LAPB_ADDR_B = common dso_local global i8 0, align 1
@.str = private unnamed_addr constant [18 x i8] c"(%p) S%d TX %3ph\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lapb_transmit_buffer(%struct.lapb_cb* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.lapb_cb*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.lapb_cb* %0, %struct.lapb_cb** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %9 = call i8* @skb_push(%struct.sk_buff* %8, i32 1)
  store i8* %9, i8** %7, align 8
  %10 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %11 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @LAPB_MLP, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %3
  %17 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %18 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @LAPB_DCE, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @LAPB_COMMAND, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i8, i8* @LAPB_ADDR_C, align 1
  %29 = load i8*, i8** %7, align 8
  store i8 %28, i8* %29, align 1
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @LAPB_RESPONSE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8, i8* @LAPB_ADDR_D, align 1
  %36 = load i8*, i8** %7, align 8
  store i8 %35, i8* %36, align 1
  br label %37

37:                                               ; preds = %34, %30
  br label %53

38:                                               ; preds = %16
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @LAPB_COMMAND, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load i8, i8* @LAPB_ADDR_D, align 1
  %44 = load i8*, i8** %7, align 8
  store i8 %43, i8* %44, align 1
  br label %45

45:                                               ; preds = %42, %38
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @LAPB_RESPONSE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %52

49:                                               ; preds = %45
  %50 = load i8, i8* @LAPB_ADDR_C, align 1
  %51 = load i8*, i8** %7, align 8
  store i8 %50, i8* %51, align 1
  br label %52

52:                                               ; preds = %49, %45
  br label %53

53:                                               ; preds = %52, %37
  br label %92

54:                                               ; preds = %3
  %55 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %56 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @LAPB_DCE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @LAPB_COMMAND, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i8, i8* @LAPB_ADDR_A, align 1
  %67 = load i8*, i8** %7, align 8
  store i8 %66, i8* %67, align 1
  br label %68

68:                                               ; preds = %65, %61
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @LAPB_RESPONSE, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i8, i8* @LAPB_ADDR_B, align 1
  %74 = load i8*, i8** %7, align 8
  store i8 %73, i8* %74, align 1
  br label %75

75:                                               ; preds = %72, %68
  br label %91

76:                                               ; preds = %54
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @LAPB_COMMAND, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i8, i8* @LAPB_ADDR_B, align 1
  %82 = load i8*, i8** %7, align 8
  store i8 %81, i8* %82, align 1
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @LAPB_RESPONSE, align 4
  %86 = icmp eq i32 %84, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %83
  %88 = load i8, i8* @LAPB_ADDR_A, align 1
  %89 = load i8*, i8** %7, align 8
  store i8 %88, i8* %89, align 1
  br label %90

90:                                               ; preds = %87, %83
  br label %91

91:                                               ; preds = %90, %75
  br label %92

92:                                               ; preds = %91, %53
  %93 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %94 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %97 = getelementptr inbounds %struct.lapb_cb, %struct.lapb_cb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @lapb_dbg(i32 2, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %95, i32 %98, i32 %101)
  %103 = load %struct.lapb_cb*, %struct.lapb_cb** %4, align 8
  %104 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %105 = call i32 @lapb_data_transmit(%struct.lapb_cb* %103, %struct.sk_buff* %104)
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %110, label %107

107:                                              ; preds = %92
  %108 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %110

110:                                              ; preds = %107, %92
  ret void
}

declare dso_local i8* @skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @lapb_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @lapb_data_transmit(%struct.lapb_cb*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
