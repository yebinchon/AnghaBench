; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_attach_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_attach_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_proxy* }
%struct.aa_proxy = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { %struct.TYPE_2__, i64, i64 }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"<unknown>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_profile_attach_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_profile_attach_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_proxy*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.aa_proxy*, %struct.aa_proxy** %9, align 8
  store %struct.aa_proxy* %10, %struct.aa_proxy** %5, align 8
  %11 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %12 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %11, i32 0, i32 0
  %13 = call %struct.aa_label* @aa_get_label_rcu(i32* %12)
  store %struct.aa_label* %13, %struct.aa_label** %6, align 8
  %14 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %15 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %14)
  store %struct.aa_profile* %15, %struct.aa_profile** %7, align 8
  %16 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %17 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %22 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %23 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @seq_printf(%struct.seq_file* %21, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %24)
  br label %42

26:                                               ; preds = %2
  %27 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %28 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 @seq_puts(%struct.seq_file* %32, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %41

34:                                               ; preds = %26
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %37 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i64 %39)
  br label %41

41:                                               ; preds = %34, %31
  br label %42

42:                                               ; preds = %41, %20
  %43 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %44 = call i32 @aa_put_label(%struct.aa_label* %43)
  ret i32 0
}

declare dso_local %struct.aa_label* @aa_get_label_rcu(i32*) #1

declare dso_local %struct.aa_profile* @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
