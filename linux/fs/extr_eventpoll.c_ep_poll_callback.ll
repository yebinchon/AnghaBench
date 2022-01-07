; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_poll_callback.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_eventpoll.c_ep_poll_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.epitem = type { i64, %struct.TYPE_7__, i32, %struct.eventpoll* }
%struct.TYPE_7__ = type { i32 }
%struct.eventpoll = type { i32, i32, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }

@EP_PRIVATE_BITS = common dso_local global i32 0, align 4
@EP_UNACTIVE_PTR = common dso_local global i64 0, align 8
@EPOLLEXCLUSIVE = common dso_local global i32 0, align 4
@POLLFREE = common dso_local global i32 0, align 4
@EPOLLINOUT_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i32, i32, i8*)* @ep_poll_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_poll_callback(%struct.TYPE_8__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.epitem*, align 8
  %11 = alloca %struct.eventpoll*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i8* %3, i8** %8, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %16 = call %struct.epitem* @ep_item_from_wait(%struct.TYPE_8__* %15)
  store %struct.epitem* %16, %struct.epitem** %10, align 8
  %17 = load %struct.epitem*, %struct.epitem** %10, align 8
  %18 = getelementptr inbounds %struct.epitem, %struct.epitem* %17, i32 0, i32 3
  %19 = load %struct.eventpoll*, %struct.eventpoll** %18, align 8
  store %struct.eventpoll* %19, %struct.eventpoll** %11, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = call i32 @key_to_poll(i8* %20)
  store i32 %21, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %22 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %23 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %22, i32 0, i32 1
  %24 = load i64, i64* %13, align 8
  %25 = call i32 @read_lock_irqsave(i32* %23, i64 %24)
  %26 = load %struct.epitem*, %struct.epitem** %10, align 8
  %27 = call i32 @ep_set_busy_poll_napi_id(%struct.epitem* %26)
  %28 = load %struct.epitem*, %struct.epitem** %10, align 8
  %29 = getelementptr inbounds %struct.epitem, %struct.epitem* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @EP_PRIVATE_BITS, align 4
  %33 = xor i32 %32, -1
  %34 = and i32 %31, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %4
  br label %139

37:                                               ; preds = %4
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %37
  %41 = load i32, i32* %12, align 4
  %42 = load %struct.epitem*, %struct.epitem** %10, align 8
  %43 = getelementptr inbounds %struct.epitem, %struct.epitem* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = and i32 %41, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %40
  br label %139

49:                                               ; preds = %40, %37
  %50 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %51 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @READ_ONCE(i32 %52)
  %54 = load i64, i64* @EP_UNACTIVE_PTR, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %70

56:                                               ; preds = %49
  %57 = load %struct.epitem*, %struct.epitem** %10, align 8
  %58 = getelementptr inbounds %struct.epitem, %struct.epitem* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @EP_UNACTIVE_PTR, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %56
  %63 = load %struct.epitem*, %struct.epitem** %10, align 8
  %64 = call i64 @chain_epi_lockless(%struct.epitem* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %62
  %67 = load %struct.epitem*, %struct.epitem** %10, align 8
  %68 = call i32 @ep_pm_stay_awake_rcu(%struct.epitem* %67)
  br label %69

69:                                               ; preds = %66, %62, %56
  br label %139

70:                                               ; preds = %49
  %71 = load %struct.epitem*, %struct.epitem** %10, align 8
  %72 = call i32 @ep_is_linked(%struct.epitem* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %84, label %74

74:                                               ; preds = %70
  %75 = load %struct.epitem*, %struct.epitem** %10, align 8
  %76 = getelementptr inbounds %struct.epitem, %struct.epitem* %75, i32 0, i32 2
  %77 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %78 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %77, i32 0, i32 3
  %79 = call i64 @list_add_tail_lockless(i32* %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %74
  %82 = load %struct.epitem*, %struct.epitem** %10, align 8
  %83 = call i32 @ep_pm_stay_awake_rcu(%struct.epitem* %82)
  br label %84

84:                                               ; preds = %81, %74, %70
  %85 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %86 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %85, i32 0, i32 2
  %87 = call i64 @waitqueue_active(i32* %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %130

89:                                               ; preds = %84
  %90 = load %struct.epitem*, %struct.epitem** %10, align 8
  %91 = getelementptr inbounds %struct.epitem, %struct.epitem* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @EPOLLEXCLUSIVE, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %126

97:                                               ; preds = %89
  %98 = load i32, i32* %12, align 4
  %99 = load i32, i32* @POLLFREE, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %126, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @EPOLLINOUT_BITS, align 4
  %105 = and i32 %103, %104
  switch i32 %105, label %125 [
    i32 129, label %106
    i32 128, label %115
    i32 0, label %124
  ]

106:                                              ; preds = %102
  %107 = load %struct.epitem*, %struct.epitem** %10, align 8
  %108 = getelementptr inbounds %struct.epitem, %struct.epitem* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = and i32 %110, 129
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %106
  store i32 1, i32* %14, align 4
  br label %114

114:                                              ; preds = %113, %106
  br label %125

115:                                              ; preds = %102
  %116 = load %struct.epitem*, %struct.epitem** %10, align 8
  %117 = getelementptr inbounds %struct.epitem, %struct.epitem* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = and i32 %119, 128
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %123

122:                                              ; preds = %115
  store i32 1, i32* %14, align 4
  br label %123

123:                                              ; preds = %122, %115
  br label %125

124:                                              ; preds = %102
  store i32 1, i32* %14, align 4
  br label %125

125:                                              ; preds = %102, %124, %123, %114
  br label %126

126:                                              ; preds = %125, %97, %89
  %127 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %128 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %127, i32 0, i32 2
  %129 = call i32 @wake_up(i32* %128)
  br label %130

130:                                              ; preds = %126, %84
  %131 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %132 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %131, i32 0, i32 0
  %133 = call i64 @waitqueue_active(i32* %132)
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %130
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %9, align 4
  br label %138

138:                                              ; preds = %135, %130
  br label %139

139:                                              ; preds = %138, %69, %48, %36
  %140 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %141 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %140, i32 0, i32 1
  %142 = load i64, i64* %13, align 8
  %143 = call i32 @read_unlock_irqrestore(i32* %141, i64 %142)
  %144 = load i32, i32* %9, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %139
  %147 = load %struct.eventpoll*, %struct.eventpoll** %11, align 8
  %148 = getelementptr inbounds %struct.eventpoll, %struct.eventpoll* %147, i32 0, i32 0
  %149 = call i32 @ep_poll_safewake(i32* %148)
  br label %150

150:                                              ; preds = %146, %139
  %151 = load %struct.epitem*, %struct.epitem** %10, align 8
  %152 = getelementptr inbounds %struct.epitem, %struct.epitem* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* @EPOLLEXCLUSIVE, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %150
  store i32 1, i32* %14, align 4
  br label %159

159:                                              ; preds = %158, %150
  %160 = load i32, i32* %12, align 4
  %161 = load i32, i32* @POLLFREE, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %172

164:                                              ; preds = %159
  %165 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %166 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %165, i32 0, i32 0
  %167 = call i32 @list_del_init(i32* %166)
  %168 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %169 = call %struct.TYPE_9__* @ep_pwq_from_wait(%struct.TYPE_8__* %168)
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = call i32 @smp_store_release(i32* %170, i32* null)
  br label %172

172:                                              ; preds = %164, %159
  %173 = load i32, i32* %14, align 4
  ret i32 %173
}

declare dso_local %struct.epitem* @ep_item_from_wait(%struct.TYPE_8__*) #1

declare dso_local i32 @key_to_poll(i8*) #1

declare dso_local i32 @read_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ep_set_busy_poll_napi_id(%struct.epitem*) #1

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local i64 @chain_epi_lockless(%struct.epitem*) #1

declare dso_local i32 @ep_pm_stay_awake_rcu(%struct.epitem*) #1

declare dso_local i32 @ep_is_linked(%struct.epitem*) #1

declare dso_local i64 @list_add_tail_lockless(i32*, i32*) #1

declare dso_local i64 @waitqueue_active(i32*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @read_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ep_poll_safewake(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @smp_store_release(i32*, i32*) #1

declare dso_local %struct.TYPE_9__* @ep_pwq_from_wait(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
