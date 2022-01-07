; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_copy_addr.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_af_unix.c_unix_copy_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msghdr = type { i32, i32 }
%struct.sock = type { i32 }
%struct.unix_address = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.msghdr*, %struct.sock*)* @unix_copy_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @unix_copy_addr(%struct.msghdr* %0, %struct.sock* %1) #0 {
  %3 = alloca %struct.msghdr*, align 8
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.unix_address*, align 8
  store %struct.msghdr* %0, %struct.msghdr** %3, align 8
  store %struct.sock* %1, %struct.sock** %4, align 8
  %6 = load %struct.sock*, %struct.sock** %4, align 8
  %7 = call %struct.TYPE_2__* @unix_sk(%struct.sock* %6)
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = call %struct.unix_address* @smp_load_acquire(i32* %8)
  store %struct.unix_address* %9, %struct.unix_address** %5, align 8
  %10 = load %struct.unix_address*, %struct.unix_address** %5, align 8
  %11 = icmp ne %struct.unix_address* %10, null
  br i1 %11, label %12, label %28

12:                                               ; preds = %2
  %13 = load %struct.unix_address*, %struct.unix_address** %5, align 8
  %14 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %17 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.msghdr*, %struct.msghdr** %3, align 8
  %19 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.unix_address*, %struct.unix_address** %5, align 8
  %22 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.unix_address*, %struct.unix_address** %5, align 8
  %25 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @memcpy(i32 %20, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %12, %2
  ret void
}

declare dso_local %struct.unix_address* @smp_load_acquire(i32*) #1

declare dso_local %struct.TYPE_2__* @unix_sk(%struct.sock*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
