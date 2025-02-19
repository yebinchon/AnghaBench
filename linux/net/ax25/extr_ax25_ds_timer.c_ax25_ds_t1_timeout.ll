; ModuleID = '/home/carl/AnghaBench/linux/net/ax25/extr_ax25_ds_timer.c_ax25_ds_t1_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/net/ax25/extr_ax25_ds_timer.c_ax25_ds_t1_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i32* }

@AX25_MODULUS = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@AX25_VALUES_WINDOW = common dso_local global i64 0, align 8
@AX25_SABM = common dso_local global i32 0, align 4
@AX25_POLLOFF = common dso_local global i32 0, align 4
@AX25_COMMAND = common dso_local global i32 0, align 4
@AX25_SABME = common dso_local global i32 0, align 4
@AX25_DISC = common dso_local global i32 0, align 4
@AX25_POLLON = common dso_local global i32 0, align 4
@SOCK_DESTROY = common dso_local global i32 0, align 4
@AX25_DM = common dso_local global i32 0, align 4
@AX25_RESPONSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ax25_ds_t1_timeout(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %3 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %4 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %124 [
    i32 130, label %6
    i32 129, label %70
    i32 128, label %101
  ]

6:                                                ; preds = %1
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %9, %12
  br i1 %13, label %14, label %46

14:                                               ; preds = %6
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @AX25_MODULUS, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = call i32 @ax25_disconnect(%struct.TYPE_9__* %21, i32 %22)
  br label %129

24:                                               ; preds = %14
  %25 = load i32, i32* @AX25_MODULUS, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @AX25_VALUES_WINDOW, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 8
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 1
  store i32 0, i32* %39, align 4
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %41 = load i32, i32* @AX25_SABM, align 4
  %42 = load i32, i32* @AX25_POLLOFF, align 4
  %43 = load i32, i32* @AX25_COMMAND, align 4
  %44 = call i32 @ax25_send_control(%struct.TYPE_9__* %40, i32 %41, i32 %42, i32 %43)
  br label %45

45:                                               ; preds = %24
  br label %69

46:                                               ; preds = %6
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @AX25_MODULUS, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %46
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %58 = load i32, i32* @AX25_SABM, align 4
  %59 = load i32, i32* @AX25_POLLOFF, align 4
  %60 = load i32, i32* @AX25_COMMAND, align 4
  %61 = call i32 @ax25_send_control(%struct.TYPE_9__* %57, i32 %58, i32 %59, i32 %60)
  br label %68

62:                                               ; preds = %46
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %64 = load i32, i32* @AX25_SABME, align 4
  %65 = load i32, i32* @AX25_POLLOFF, align 4
  %66 = load i32, i32* @AX25_COMMAND, align 4
  %67 = call i32 @ax25_send_control(%struct.TYPE_9__* %63, i32 %64, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %62, %56
  br label %69

69:                                               ; preds = %68, %45
  br label %124

70:                                               ; preds = %1
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp eq i32 %73, %76
  br i1 %77, label %78, label %95

78:                                               ; preds = %70
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %80 = load i32, i32* @AX25_DISC, align 4
  %81 = load i32, i32* @AX25_POLLON, align 4
  %82 = load i32, i32* @AX25_COMMAND, align 4
  %83 = call i32 @ax25_send_control(%struct.TYPE_9__* %79, i32 %80, i32 %81, i32 %82)
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SOCK_DESTROY, align 4
  %88 = call i32 @sock_flag(i32 %86, i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %94, label %90

90:                                               ; preds = %78
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %92 = load i32, i32* @ETIMEDOUT, align 4
  %93 = call i32 @ax25_disconnect(%struct.TYPE_9__* %91, i32 %92)
  br label %94

94:                                               ; preds = %90, %78
  br label %129

95:                                               ; preds = %70
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %95
  br label %124

101:                                              ; preds = %1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %101
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %111 = load i32, i32* @AX25_DM, align 4
  %112 = load i32, i32* @AX25_POLLON, align 4
  %113 = load i32, i32* @AX25_RESPONSE, align 4
  %114 = call i32 @ax25_send_control(%struct.TYPE_9__* %110, i32 %111, i32 %112, i32 %113)
  %115 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %116 = load i32, i32* @ETIMEDOUT, align 4
  %117 = call i32 @ax25_disconnect(%struct.TYPE_9__* %115, i32 %116)
  br label %129

118:                                              ; preds = %101
  %119 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %120 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %120, align 4
  br label %123

123:                                              ; preds = %118
  br label %124

124:                                              ; preds = %1, %123, %100, %69
  %125 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %126 = call i32 @ax25_calculate_t1(%struct.TYPE_9__* %125)
  %127 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %128 = call i32 @ax25_start_t1timer(%struct.TYPE_9__* %127)
  br label %129

129:                                              ; preds = %124, %109, %94, %20
  ret void
}

declare dso_local i32 @ax25_disconnect(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @ax25_send_control(%struct.TYPE_9__*, i32, i32, i32) #1

declare dso_local i32 @sock_flag(i32, i32) #1

declare dso_local i32 @ax25_calculate_t1(%struct.TYPE_9__*) #1

declare dso_local i32 @ax25_start_t1timer(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
