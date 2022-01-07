; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_hash_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_hash_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_proxy* }
%struct.aa_proxy = type { i32 }
%struct.aa_label = type { i32 }
%struct.aa_profile = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_profile_hash_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_profile_hash_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_proxy*, align 8
  %6 = alloca %struct.aa_label*, align 8
  %7 = alloca %struct.aa_profile*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.aa_proxy*, %struct.aa_proxy** %11, align 8
  store %struct.aa_proxy* %12, %struct.aa_proxy** %5, align 8
  %13 = load %struct.aa_proxy*, %struct.aa_proxy** %5, align 8
  %14 = getelementptr inbounds %struct.aa_proxy, %struct.aa_proxy* %13, i32 0, i32 0
  %15 = call %struct.aa_label* @aa_get_label_rcu(i32* %14)
  store %struct.aa_label* %15, %struct.aa_label** %6, align 8
  %16 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %17 = call %struct.aa_profile* @labels_profile(%struct.aa_label* %16)
  store %struct.aa_profile* %17, %struct.aa_profile** %7, align 8
  %18 = call i32 (...) @aa_hash_size()
  store i32 %18, i32* %9, align 4
  %19 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %20 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %44

23:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %38, %23
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %25, %26
  br i1 %27, label %28, label %41

28:                                               ; preds = %24
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = load %struct.aa_profile*, %struct.aa_profile** %7, align 8
  %31 = getelementptr inbounds %struct.aa_profile, %struct.aa_profile* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %36)
  br label %38

38:                                               ; preds = %28
  %39 = load i32, i32* %8, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %24

41:                                               ; preds = %24
  %42 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %43 = call i32 @seq_putc(%struct.seq_file* %42, i8 signext 10)
  br label %44

44:                                               ; preds = %41, %2
  %45 = load %struct.aa_label*, %struct.aa_label** %6, align 8
  %46 = call i32 @aa_put_label(%struct.aa_label* %45)
  ret i32 0
}

declare dso_local %struct.aa_label* @aa_get_label_rcu(i32*) #1

declare dso_local %struct.aa_profile* @labels_profile(%struct.aa_label*) #1

declare dso_local i32 @aa_hash_size(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

declare dso_local i32 @aa_put_label(%struct.aa_label*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
