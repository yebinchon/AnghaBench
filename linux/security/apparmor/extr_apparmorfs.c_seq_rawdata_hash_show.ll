; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_rawdata_hash_show.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_apparmorfs.c_seq_rawdata_hash_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.aa_loaddata* }
%struct.aa_loaddata = type { i32* }

@.str = private unnamed_addr constant [5 x i8] c"%.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @seq_rawdata_hash_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seq_rawdata_hash_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.aa_loaddata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %8, i32 0, i32 0
  %10 = load %struct.aa_loaddata*, %struct.aa_loaddata** %9, align 8
  store %struct.aa_loaddata* %10, %struct.aa_loaddata** %5, align 8
  %11 = call i32 (...) @aa_hash_size()
  store i32 %11, i32* %7, align 4
  %12 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %13 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %37

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %31, %16
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ult i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %23 = load %struct.aa_loaddata*, %struct.aa_loaddata** %5, align 8
  %24 = getelementptr inbounds %struct.aa_loaddata, %struct.aa_loaddata* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, i32* %25, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %6, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %6, align 4
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 @seq_putc(%struct.seq_file* %35, i8 signext 10)
  br label %37

37:                                               ; preds = %34, %2
  ret i32 0
}

declare dso_local i32 @aa_hash_size(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
