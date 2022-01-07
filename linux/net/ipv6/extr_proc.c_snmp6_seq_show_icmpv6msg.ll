; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_proc.c_snmp6_seq_show_icmpv6msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_proc.c_snmp6_seq_show_icmpv6msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }

@ICMP6MSG_MIB_MAX = common dso_local global i32 0, align 4
@icmp6type2name = common dso_local global i8** null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Icmp6%s%s\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Out\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"In\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"%-32s\09%lu\0A\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"Icmp6%sType%u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, i32*)* @snmp6_seq_show_icmpv6msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snmp6_seq_show_icmpv6msg(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %42, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @ICMP6MSG_MIB_MAX, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %45

14:                                               ; preds = %10
  %15 = load i32, i32* %6, align 4
  %16 = and i32 %15, 255
  store i32 %16, i32* %7, align 4
  %17 = load i8**, i8*** @icmp6type2name, align 8
  %18 = load i32, i32* %7, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i8*, i8** %17, i64 %19
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %8, align 8
  %22 = load i8*, i8** %8, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %14
  br label %42

25:                                               ; preds = %14
  %26 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, 256
  %29 = icmp ne i32 %28, 0
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %32 = load i8*, i8** %8, align 8
  %33 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %26, i32 32, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %31, i8* %32)
  %34 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %35 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %36 = load i32*, i32** %4, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = call i64 @atomic_long_read(i32* %39)
  %41 = call i32 @seq_printf(%struct.seq_file* %34, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %35, i64 %40)
  br label %42

42:                                               ; preds = %25, %24
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %6, align 4
  br label %10

45:                                               ; preds = %10
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %73, %45
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* @ICMP6MSG_MIB_MAX, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = call i64 @atomic_long_read(i32* %54)
  store i64 %55, i64* %9, align 8
  %56 = load i64, i64* %9, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %50
  br label %73

59:                                               ; preds = %50
  %60 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %61 = load i32, i32* %6, align 4
  %62 = and i32 %61, 256
  %63 = icmp ne i32 %62, 0
  %64 = zext i1 %63 to i64
  %65 = select i1 %63, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %66 = load i32, i32* %6, align 4
  %67 = and i32 %66, 255
  %68 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %60, i32 32, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* %65, i32 %67)
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %71 = load i64, i64* %9, align 8
  %72 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i8* %70, i64 %71)
  br label %73

73:                                               ; preds = %59, %58
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %46

76:                                               ; preds = %46
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i64) #1

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
