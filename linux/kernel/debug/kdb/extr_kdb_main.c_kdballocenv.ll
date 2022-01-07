; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdballocenv.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_main.c_kdballocenv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdballocenv.envbuffer = internal global [512 x i8] zeroinitializer, align 16
@kdballocenv.envbufsize = internal global i32 0, align 4
@KDB_ENVBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @kdballocenv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @kdballocenv(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8*, align 8
  store i64 %0, i64* %2, align 8
  store i8* null, i8** %3, align 8
  %4 = load i32, i32* @kdballocenv.envbufsize, align 4
  %5 = sub nsw i32 512, %4
  %6 = sext i32 %5 to i64
  %7 = load i64, i64* %2, align 8
  %8 = icmp uge i64 %6, %7
  br i1 %8, label %9, label %18

9:                                                ; preds = %1
  %10 = load i32, i32* @kdballocenv.envbufsize, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* @kdballocenv.envbuffer, i64 0, i64 %11
  store i8* %12, i8** %3, align 8
  %13 = load i64, i64* %2, align 8
  %14 = load i32, i32* @kdballocenv.envbufsize, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, %13
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* @kdballocenv.envbufsize, align 4
  br label %18

18:                                               ; preds = %9, %1
  %19 = load i8*, i8** %3, align 8
  ret i8* %19
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
