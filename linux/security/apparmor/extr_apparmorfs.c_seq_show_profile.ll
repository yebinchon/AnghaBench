; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_show_profile.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_show_profile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_ns* }
%struct.aa_ns = type { i32 }
%struct.aa_profile = type { i32 }

@FLAG_SHOW_MODE = common dso_local global i32 0, align 4
@FLAG_VIEW_SUBNS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_show_profile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_show_profile(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_profile*, align 8
  %6 = alloca %struct.aa_ns*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.aa_profile*
  store %struct.aa_profile* %8, %struct.aa_profile** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.aa_ns*, %struct.aa_ns** %10, align 8
  store %struct.aa_ns* %11, %struct.aa_ns** %6, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = load %struct.aa_ns*, %struct.aa_ns** %6, align 8
  %14 = load %struct.aa_profile*, %struct.aa_profile** %5, align 8
  %15 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %14, i32 0, i32 0
  %16 = load i32, i32* @FLAG_SHOW_MODE, align 4
  %17 = load i32, i32* @FLAG_VIEW_SUBNS, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32 @aa_label_seq_xprint(%struct.seq_file* %12, %struct.aa_ns* %13, i32* %15, i32 %18, i32 %19)
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = call i32 @seq_putc(%struct.seq_file* %21, i8 signext 10)
  ret i32 0
}

declare dso_local i32 @aa_label_seq_xprint(%struct.seq_file*, %struct.aa_ns*, i32*, i32, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
