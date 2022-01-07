; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_token2str.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_super.c_token2str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_token = type { i32, i8* }

@tokens = common dso_local global %struct.match_token* null, align 8
@Opt_err = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @token2str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @token2str(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.match_token*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load %struct.match_token*, %struct.match_token** @tokens, align 8
  store %struct.match_token* %4, %struct.match_token** %3, align 8
  br label %5

5:                                                ; preds = %25, %1
  %6 = load %struct.match_token*, %struct.match_token** %3, align 8
  %7 = getelementptr inbounds %struct.match_token, %struct.match_token* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @Opt_err, align 4
  %10 = icmp ne i32 %8, %9
  br i1 %10, label %11, label %28

11:                                               ; preds = %5
  %12 = load %struct.match_token*, %struct.match_token** %3, align 8
  %13 = getelementptr inbounds %struct.match_token, %struct.match_token* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %2, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %24

17:                                               ; preds = %11
  %18 = load %struct.match_token*, %struct.match_token** %3, align 8
  %19 = getelementptr inbounds %struct.match_token, %struct.match_token* %18, i32 0, i32 1
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @strchr(i8* %20, i8 signext 61)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  br label %28

24:                                               ; preds = %17, %11
  br label %25

25:                                               ; preds = %24
  %26 = load %struct.match_token*, %struct.match_token** %3, align 8
  %27 = getelementptr inbounds %struct.match_token, %struct.match_token* %26, i32 1
  store %struct.match_token* %27, %struct.match_token** %3, align 8
  br label %5

28:                                               ; preds = %23, %5
  %29 = load %struct.match_token*, %struct.match_token** %3, align 8
  %30 = getelementptr inbounds %struct.match_token, %struct.match_token* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  ret i8* %31
}

declare dso_local i32 @strchr(i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
