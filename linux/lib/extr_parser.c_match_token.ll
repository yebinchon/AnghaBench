; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parser.c_match_token.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parser.c_match_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_token = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @match_token(i8* %0, %struct.match_token* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.match_token*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.match_token*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.match_token* %1, %struct.match_token** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.match_token*, %struct.match_token** %5, align 8
  store %struct.match_token* %8, %struct.match_token** %7, align 8
  br label %9

9:                                                ; preds = %19, %3
  %10 = load i8*, i8** %4, align 8
  %11 = load %struct.match_token*, %struct.match_token** %7, align 8
  %12 = getelementptr inbounds %struct.match_token, %struct.match_token* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32*, i32** %6, align 8
  %15 = call i32 @match_one(i8* %10, i32 %13, i32* %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  br i1 %17, label %18, label %22

18:                                               ; preds = %9
  br label %19

19:                                               ; preds = %18
  %20 = load %struct.match_token*, %struct.match_token** %7, align 8
  %21 = getelementptr inbounds %struct.match_token, %struct.match_token* %20, i32 1
  store %struct.match_token* %21, %struct.match_token** %7, align 8
  br label %9

22:                                               ; preds = %9
  %23 = load %struct.match_token*, %struct.match_token** %7, align 8
  %24 = getelementptr inbounds %struct.match_token, %struct.match_token* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  ret i32 %25
}

declare dso_local i32 @match_one(i8*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
