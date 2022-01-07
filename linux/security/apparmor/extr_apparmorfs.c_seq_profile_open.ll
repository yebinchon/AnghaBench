; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_open.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_profile_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.seq_file = type opaque
%struct.aa_proxy = type { i32 }
%struct.seq_file.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*, i32 (%struct.seq_file*, i8*)*)* @seq_profile_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_profile_open(%struct.inode* %0, %struct.file* %1, i32 (%struct.seq_file*, i8*)* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32 (%struct.seq_file*, i8*)*, align 8
  %7 = alloca %struct.aa_proxy*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  store i32 (%struct.seq_file*, i8*)* %2, i32 (%struct.seq_file*, i8*)** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.aa_proxy* @aa_get_proxy(i32 %11)
  store %struct.aa_proxy* %12, %struct.aa_proxy** %7, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = load i32 (%struct.seq_file*, i8*)*, i32 (%struct.seq_file*, i8*)** %6, align 8
  %15 = bitcast i32 (%struct.seq_file*, i8*)* %14 to i32 (%struct.seq_file.0*, i8*)*
  %16 = load %struct.aa_proxy*, %struct.aa_proxy** %7, align 8
  %17 = call i32 @single_open(%struct.file* %13, i32 (%struct.seq_file.0*, i8*)* %15, %struct.aa_proxy* %16)
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.file*, %struct.file** %5, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  %23 = load %struct.aa_proxy*, %struct.aa_proxy** %7, align 8
  %24 = call i32 @aa_put_proxy(%struct.aa_proxy* %23)
  br label %25

25:                                               ; preds = %20, %3
  %26 = load i32, i32* %8, align 4
  ret i32 %26
}

declare dso_local %struct.aa_proxy* @aa_get_proxy(i32) #1

declare dso_local i32 @single_open(%struct.file*, i32 (%struct.seq_file.0*, i8*)*, %struct.aa_proxy*) #1

declare dso_local i32 @aa_put_proxy(%struct.aa_proxy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
