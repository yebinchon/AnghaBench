; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_icmp_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_proc.c_icmp_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i64 }
%struct.seq_file = type { %struct.net* }
%struct.net = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }

@.str = private unnamed_addr constant [36 x i8] c"\0AIcmp: InMsgs InErrors InCsumErrors\00", align 1
@icmpmibmap = common dso_local global %struct.TYPE_6__* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c" In%s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c" OutMsgs OutErrors\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" Out%s\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"\0AIcmp: %lu %lu %lu\00", align 1
@ICMP_MIB_INMSGS = common dso_local global i32 0, align 4
@ICMP_MIB_INERRORS = common dso_local global i32 0, align 4
@ICMP_MIB_CSUMERRORS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c" %lu\00", align 1
@.str.6 = private unnamed_addr constant [9 x i8] c" %lu %lu\00", align 1
@ICMP_MIB_OUTMSGS = common dso_local global i32 0, align 4
@ICMP_MIB_OUTERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @icmp_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icmp_put(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.net*, align 8
  %5 = alloca i32*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.net*, %struct.net** %7, align 8
  store %struct.net* %8, %struct.net** %4, align 8
  %9 = load %struct.net*, %struct.net** %4, align 8
  %10 = getelementptr inbounds %struct.net, %struct.net* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %5, align 8
  %15 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %16 = call i32 @seq_puts(%struct.seq_file* %15, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %17

17:                                               ; preds = %34, %1
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %17
  %26 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i64 %32)
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %17

37:                                               ; preds = %17
  %38 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %39 = call i32 @seq_puts(%struct.seq_file* %38, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %57, %37
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %42 = load i32, i32* %3, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %60

48:                                               ; preds = %40
  %49 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %49, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %55)
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %3, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %3, align 4
  br label %40

60:                                               ; preds = %40
  %61 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %62 = load %struct.net*, %struct.net** %4, align 8
  %63 = getelementptr inbounds %struct.net, %struct.net* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ICMP_MIB_INMSGS, align 4
  %67 = call i32 @snmp_fold_field(i32 %65, i32 %66)
  %68 = sext i32 %67 to i64
  %69 = load %struct.net*, %struct.net** %4, align 8
  %70 = getelementptr inbounds %struct.net, %struct.net* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ICMP_MIB_INERRORS, align 4
  %74 = call i32 @snmp_fold_field(i32 %72, i32 %73)
  %75 = load %struct.net*, %struct.net** %4, align 8
  %76 = getelementptr inbounds %struct.net, %struct.net* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @ICMP_MIB_CSUMERRORS, align 4
  %80 = call i32 @snmp_fold_field(i32 %78, i32 %79)
  %81 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %68, i32 %74, i32 %80)
  store i32 0, i32* %3, align 4
  br label %82

82:                                               ; preds = %103, %60
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %106

90:                                               ; preds = %82
  %91 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %94 = load i32, i32* %3, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %92, i64 %99
  %101 = call i64 @atomic_long_read(i32* %100)
  %102 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %91, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %101)
  br label %103

103:                                              ; preds = %90
  %104 = load i32, i32* %3, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %3, align 4
  br label %82

106:                                              ; preds = %82
  %107 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %108 = load %struct.net*, %struct.net** %4, align 8
  %109 = getelementptr inbounds %struct.net, %struct.net* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* @ICMP_MIB_OUTMSGS, align 4
  %113 = call i32 @snmp_fold_field(i32 %111, i32 %112)
  %114 = sext i32 %113 to i64
  %115 = load %struct.net*, %struct.net** %4, align 8
  %116 = getelementptr inbounds %struct.net, %struct.net* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ICMP_MIB_OUTERRORS, align 4
  %120 = call i32 @snmp_fold_field(i32 %118, i32 %119)
  %121 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.6, i64 0, i64 0), i64 %114, i32 %120)
  store i32 0, i32* %3, align 4
  br label %122

122:                                              ; preds = %144, %106
  %123 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %124 = load i32, i32* %3, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %147

130:                                              ; preds = %122
  %131 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %132 = load i32*, i32** %5, align 8
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** @icmpmibmap, align 8
  %134 = load i32, i32* %3, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = or i32 %138, 256
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds i32, i32* %132, i64 %140
  %142 = call i64 @atomic_long_read(i32* %141)
  %143 = call i32 (%struct.seq_file*, i8*, i64, ...) @seq_printf(%struct.seq_file* %131, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i64 %142)
  br label %144

144:                                              ; preds = %130
  %145 = load i32, i32* %3, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %3, align 4
  br label %122

147:                                              ; preds = %122
  ret void
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, ...) #1

declare dso_local i32 @snmp_fold_field(i32, i32) #1

declare dso_local i64 @atomic_long_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
