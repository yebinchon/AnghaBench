; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_break_both_connections.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_stream.c_break_both_connections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_bebob = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_bebob*)* @break_both_connections to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @break_both_connections(%struct.snd_bebob* %0) #0 {
  %2 = alloca %struct.snd_bebob*, align 8
  store %struct.snd_bebob* %0, %struct.snd_bebob** %2, align 8
  %3 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %4 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %3, i32 0, i32 2
  %5 = call i32 @cmp_connection_break(i32* %4)
  %6 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %7 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %6, i32 0, i32 1
  %8 = call i32 @cmp_connection_break(i32* %7)
  %9 = load %struct.snd_bebob*, %struct.snd_bebob** %2, align 8
  %10 = getelementptr inbounds %struct.snd_bebob, %struct.snd_bebob* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @msleep(i32 200)
  br label %15

15:                                               ; preds = %13, %1
  ret void
}

declare dso_local i32 @cmp_connection_break(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
