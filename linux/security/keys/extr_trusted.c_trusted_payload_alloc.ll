; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_trusted_payload_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_trusted.c_trusted_payload_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trusted_key_payload = type { i32 }
%struct.key = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.trusted_key_payload* (%struct.key*)* @trusted_payload_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.trusted_key_payload* @trusted_payload_alloc(%struct.key* %0) #0 {
  %2 = alloca %struct.trusted_key_payload*, align 8
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.trusted_key_payload*, align 8
  %5 = alloca i32, align 4
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.trusted_key_payload* null, %struct.trusted_key_payload** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = call i32 @key_payload_reserve(%struct.key* %6, i32 4)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  store %struct.trusted_key_payload* %11, %struct.trusted_key_payload** %2, align 8
  br label %22

12:                                               ; preds = %1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.trusted_key_payload* @kzalloc(i32 4, i32 %13)
  store %struct.trusted_key_payload* %14, %struct.trusted_key_payload** %4, align 8
  %15 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %16 = icmp ne %struct.trusted_key_payload* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %12
  %18 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  %19 = getelementptr inbounds %struct.trusted_key_payload, %struct.trusted_key_payload* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  br label %20

20:                                               ; preds = %17, %12
  %21 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %4, align 8
  store %struct.trusted_key_payload* %21, %struct.trusted_key_payload** %2, align 8
  br label %22

22:                                               ; preds = %20, %10
  %23 = load %struct.trusted_key_payload*, %struct.trusted_key_payload** %2, align 8
  ret %struct.trusted_key_payload* %23
}

declare dso_local i32 @key_payload_reserve(%struct.key*, i32) #1

declare dso_local %struct.trusted_key_payload* @kzalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
