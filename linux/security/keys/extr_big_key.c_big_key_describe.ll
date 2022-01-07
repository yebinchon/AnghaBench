; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_describe.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_big_key.c_big_key_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.seq_file = type { i32 }

@big_key_len = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [11 x i8] c": %zu [%s]\00", align 1
@BIG_KEY_FILE_THRESHOLD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"buff\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @big_key_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i64, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = getelementptr inbounds %struct.key, %struct.key* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i64, i64* @big_key_len, align 8
  %11 = getelementptr inbounds i32, i32* %9, i64 %10
  %12 = load i32, i32* %11, align 4
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.key*, %struct.key** %3, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %14, i32 %17)
  %19 = load %struct.key*, %struct.key** %3, align 8
  %20 = call i64 @key_is_positive(%struct.key* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* %5, align 8
  %26 = load i64, i64* @BIG_KEY_FILE_THRESHOLD, align 8
  %27 = icmp ugt i64 %25, %26
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i64 %24, i8* %29)
  br label %31

31:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i32) #1

declare dso_local i64 @key_is_positive(%struct.key*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
