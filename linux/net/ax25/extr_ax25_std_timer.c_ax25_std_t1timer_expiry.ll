; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_timer.c_ax25_std_t1timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_std_timer.c_ax25_std_t1timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, %struct.TYPE_9__*, i32 }
%struct.TYPE_9__ = type { i32* }

@AX25_MODULUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_SABM = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_SABME = common dso_local global i32 0, align 4
@AX25_DISC = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@AX25_DM = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_std_t1timer_expiry(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %3 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %138 [
    i32 131, label %6
    i32 130, label %70
    i32 129, label %106
    i32 128, label %113
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %6
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AX25_MODULUS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = call i32 @ax25_disconnect(%struct.TYPE_10__* %21, i32 %22)
  br label %143

24:                                               ; preds = %14
  %25 = load i32, i32* @AX25_MODULUS, align 4
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %41 = load i32, i32* @AX25_SABM, align 4
  %42 = load i32, i32* @AX25_POLLON, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(%struct.TYPE_10__* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %24
  br label %69

46:                                               ; preds = %6
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AX25_MODULUS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %58 = load i32, i32* @AX25_SABM, align 4
  %59 = load i32, i32* @AX25_POLLON, align 4
  %60 = load i32, i32* @AX25_COMMAND, align 4
  %61 = call i32 @ax25_send_control(%struct.TYPE_10__* %57, i32 %58, i32 %59, i32 %60)
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %64 = load i32, i32* @AX25_SABME, align 4
  %65 = load i32, i32* @AX25_POLLON, align 4
  %66 = load i32, i32* @AX25_COMMAND, align 4
  %67 = call i32 @ax25_send_control(%struct.TYPE_10__* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %45
  br label %138

70:                                               ; preds = %1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %80 = load i32, i32* @AX25_DISC, align 4
  %81 = load i32, i32* @AX25_POLLON, align 4
  %82 = load i32, i32* @AX25_COMMAND, align 4
  %83 = call i32 @ax25_send_control(%struct.TYPE_10__* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SOCK_DESTROY, align 4
  %88 = call i32 @sock_flag(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = call i32 @ax25_disconnect(%struct.TYPE_10__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %78
  br label %143

95:                                               ; preds = %70
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %101 = load i32, i32* @AX25_DISC, align 4
  %102 = load i32, i32* @AX25_POLLON, align 4
  %103 = load i32, i32* @AX25_COMMAND, align 4
  %104 = call i32 @ax25_send_control(%struct.TYPE_10__* %100, i32 %101, i32 %102, i32 %103)
  br label %105

105:                                              ; preds = %95
  br label %138

106:                                              ; preds = %1
  %107 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %108 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %107, i32 0, i32 1
  store i32 1, i32* %108, align 4
  %109 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %110 = call i32 @ax25_std_transmit_enquiry(%struct.TYPE_10__* %109)
  %111 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  store i32 128, i32* %112, align 8
  br label %138

113:                                              ; preds = %1
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = icmp eq i32 %116, %119
  br i1 %120, label %121, label %130

121:                                              ; preds = %113
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %123 = load i32, i32* @AX25_DM, align 4
  %124 = load i32, i32* @AX25_POLLON, align 4
  %125 = load i32, i32* @AX25_RESPONSE, align 4
  %126 = call i32 @ax25_send_control(%struct.TYPE_10__* %122, i32 %123, i32 %124, i32 %125)
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %128 = load i32, i32* @ETIMEDOUT, align 4
  %129 = call i32 @ax25_disconnect(%struct.TYPE_10__* %127, i32 %128)
  br label %143

130:                                              ; preds = %113
  %131 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %132, align 4
  %135 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %136 = call i32 @ax25_std_transmit_enquiry(%struct.TYPE_10__* %135)
  br label %137

137:                                              ; preds = %130
  br label %138

138:                                              ; preds = %1, %137, %106, %105, %69
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %140 = call i32 @ax25_calculate_t1(%struct.TYPE_10__* %139)
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %142 = call i32 @ax25_start_t1timer(%struct.TYPE_10__* %141)
  br label %143

143:                                              ; preds = %138, %121, %94, %20
  ret void
}

declare dso_local i32 @ax25_disconnect(%struct.TYPE_10__*, i32) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_10__*, i32, i32, i32) #1

declare dso_local i32 @sock_flag(i32, i32) #1

declare dso_local i32 @ax25_std_transmit_enquiry(%struct.TYPE_10__*) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_10__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
