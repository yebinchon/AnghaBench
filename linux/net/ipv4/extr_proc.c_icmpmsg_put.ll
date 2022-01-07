; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_icmpmsg_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_icmpmsg_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@ICMPMSG_MIB_MAX = common dso_local global i32 0, align 4
@PERLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @icmpmsg_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmpmsg_put(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [16 x i16], align 16
  %6 = alloca [16 x i64], align 16
  %7 = alloca i64, align 8
  %8 = alloca %struct.net*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.net*, %struct.net** %10, align 8
  store %struct.net* %11, %struct.net** %8, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %50, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @ICMPMSG_MIB_MAX, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %53

16:                                               ; preds = %12
  %17 = load %struct.net*, %struct.net** %8, align 8
  %18 = getelementptr inbounds %struct.net, %struct.net* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i64 @atomic_long_read(i32* %25)
  store i64 %26, i64* %7, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %16
  %30 = load i32, i32* %3, align 4
  %31 = trunc i32 %30 to i16
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 %33
  store i16 %31, i16* %34, align 2
  %35 = load i64, i64* %7, align 8
  %36 = load i32, i32* %4, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %4, align 4
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 %38
  store i64 %35, i64* %39, align 8
  br label %40

40:                                               ; preds = %29, %16
  %41 = load i32, i32* %4, align 4
  %42 = icmp eq i32 %41, 16
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %45 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 0
  %46 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 0
  %47 = load i32, i32* %4, align 4
  %48 = call i32 @icmpmsg_put_line(%struct.seq_file* %44, i64* %45, i16* %46, i32 %47)
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %40
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %3, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %3, align 4
  br label %12

53:                                               ; preds = %12
  %54 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %55 = getelementptr inbounds [16 x i64], [16 x i64]* %6, i64 0, i64 0
  %56 = getelementptr inbounds [16 x i16], [16 x i16]* %5, i64 0, i64 0
  %57 = load i32, i32* %4, align 4
  %58 = call i32 @icmpmsg_put_line(%struct.seq_file* %54, i64* %55, i16* %56, i32 %57)
  ret void
}

declare dso_local i64 @atomic_long_read(i32*) #1

declare dso_local i32 @icmpmsg_put_line(%struct.seq_file*, i64*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
