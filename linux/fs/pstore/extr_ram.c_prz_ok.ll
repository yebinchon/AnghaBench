; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_prz_ok.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_ram.c_prz_ok.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.persistent_ram_zone = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.persistent_ram_zone*)* @prz_ok to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prz_ok(%struct.persistent_ram_zone* %0) #0 {
  %2 = alloca %struct.persistent_ram_zone*, align 8
  store %struct.persistent_ram_zone* %0, %struct.persistent_ram_zone** %2, align 8
  %3 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %2, align 8
  %4 = icmp ne %struct.persistent_ram_zone* %3, null
  br i1 %4, label %5, label %14

5:                                                ; preds = %1
  %6 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %2, align 8
  %7 = call i64 @persistent_ram_old_size(%struct.persistent_ram_zone* %6)
  %8 = load %struct.persistent_ram_zone*, %struct.persistent_ram_zone** %2, align 8
  %9 = call i64 @persistent_ram_ecc_string(%struct.persistent_ram_zone* %8, i32* null, i32 0)
  %10 = add nsw i64 %7, %9
  %11 = icmp ne i64 %10, 0
  %12 = xor i1 %11, true
  %13 = xor i1 %12, true
  br label %14

14:                                               ; preds = %5, %1
  %15 = phi i1 [ false, %1 ], [ %13, %5 ]
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i64 @persistent_ram_old_size(%struct.persistent_ram_zone*) #1

declare dso_local i64 @persistent_ram_ecc_string(%struct.persistent_ram_zone*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
