; ModuleID = '/home/carl/AnghaBench/linux/net/atm/extr_proc.c_add_stats.c'
source_filename = "/home/carl/AnghaBench/linux/net/atm/extr_proc.c_add_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.k_atm_aal_stats = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"%s ( %d %d %d %d %d )\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i8*, %struct.k_atm_aal_stats*)* @add_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_stats(%struct.seq_file* %0, i8* %1, %struct.k_atm_aal_stats* %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.k_atm_aal_stats*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.k_atm_aal_stats* %2, %struct.k_atm_aal_stats** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = load %struct.k_atm_aal_stats*, %struct.k_atm_aal_stats** %6, align 8
  %10 = getelementptr inbounds %struct.k_atm_aal_stats, %struct.k_atm_aal_stats* %9, i32 0, i32 4
  %11 = call i32 @atomic_read(i32* %10)
  %12 = load %struct.k_atm_aal_stats*, %struct.k_atm_aal_stats** %6, align 8
  %13 = getelementptr inbounds %struct.k_atm_aal_stats, %struct.k_atm_aal_stats* %12, i32 0, i32 3
  %14 = call i32 @atomic_read(i32* %13)
  %15 = load %struct.k_atm_aal_stats*, %struct.k_atm_aal_stats** %6, align 8
  %16 = getelementptr inbounds %struct.k_atm_aal_stats, %struct.k_atm_aal_stats* %15, i32 0, i32 2
  %17 = call i32 @atomic_read(i32* %16)
  %18 = load %struct.k_atm_aal_stats*, %struct.k_atm_aal_stats** %6, align 8
  %19 = getelementptr inbounds %struct.k_atm_aal_stats, %struct.k_atm_aal_stats* %18, i32 0, i32 1
  %20 = call i32 @atomic_read(i32* %19)
  %21 = load %struct.k_atm_aal_stats*, %struct.k_atm_aal_stats** %6, align 8
  %22 = getelementptr inbounds %struct.k_atm_aal_stats, %struct.k_atm_aal_stats* %21, i32 0, i32 0
  %23 = call i32 @atomic_read(i32* %22)
  %24 = call i32 @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
