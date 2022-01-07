; ModuleID = '/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_find_next_circuit.c'
source_filename = "/home/carl/AnghaBench/linux/net/netrom/extr_af_netrom.c_nr_find_next_circuit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }

@circuit = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 ()* @nr_find_next_circuit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @nr_find_next_circuit() #0 {
  %1 = alloca i16, align 2
  %2 = alloca i8, align 1
  %3 = alloca i8, align 1
  %4 = alloca %struct.sock*, align 8
  %5 = load i16, i16* @circuit, align 2
  store i16 %5, i16* %1, align 2
  br label %6

6:                                                ; preds = %31, %0
  %7 = load i16, i16* %1, align 2
  %8 = zext i16 %7 to i32
  %9 = sdiv i32 %8, 256
  %10 = trunc i32 %9 to i8
  store i8 %10, i8* %2, align 1
  %11 = load i16, i16* %1, align 2
  %12 = zext i16 %11 to i32
  %13 = srem i32 %12, 256
  %14 = trunc i32 %13 to i8
  store i8 %14, i8* %3, align 1
  %15 = load i8, i8* %2, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %31

18:                                               ; preds = %6
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load i8, i8* %2, align 1
  %24 = load i8, i8* %3, align 1
  %25 = call %struct.sock* @nr_find_socket(i8 zeroext %23, i8 zeroext %24)
  store %struct.sock* %25, %struct.sock** %4, align 8
  %26 = icmp eq %struct.sock* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %34

28:                                               ; preds = %22
  %29 = load %struct.sock*, %struct.sock** %4, align 8
  %30 = call i32 @sock_put(%struct.sock* %29)
  br label %31

31:                                               ; preds = %28, %18, %6
  %32 = load i16, i16* %1, align 2
  %33 = add i16 %32, 1
  store i16 %33, i16* %1, align 2
  br label %6

34:                                               ; preds = %27
  %35 = load i16, i16* %1, align 2
  ret i16 %35
}

declare dso_local %struct.sock* @nr_find_socket(i8 zeroext, i8 zeroext) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
