; ModuleID = '/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_dump_name.c'
source_filename = "/home/carl/AnghaBench/linux/net/unix/extr_diag.c_sk_diag_dump_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.unix_address = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@UNIX_DIAG_NAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*)* @sk_diag_dump_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sk_diag_dump_name(%struct.sock* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.unix_address*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %7 = load %struct.sock*, %struct.sock** %4, align 8
  %8 = call %struct.TYPE_4__* @unix_sk(%struct.sock* %7)
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = call %struct.unix_address* @smp_load_acquire(i32* %9)
  store %struct.unix_address* %10, %struct.unix_address** %6, align 8
  %11 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %12 = icmp ne %struct.unix_address* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %27

14:                                               ; preds = %2
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = load i32, i32* @UNIX_DIAG_NAME, align 4
  %17 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %18 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = sub i64 %19, 2
  %21 = load %struct.unix_address*, %struct.unix_address** %6, align 8
  %22 = getelementptr inbounds %struct.unix_address, %struct.unix_address* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @nla_put(%struct.sk_buff* %15, i32 %16, i64 %20, i32 %25)
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %14, %13
  %28 = load i32, i32* %3, align 4
  ret i32 %28
}

declare dso_local %struct.unix_address* @smp_load_acquire(i32*) #1

declare dso_local %struct.TYPE_4__* @unix_sk(%struct.sock*) #1

declare dso_local i32 @nla_put(%struct.sk_buff*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
