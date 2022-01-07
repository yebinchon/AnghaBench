; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_is_user_regdom_saved.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_is_user_regdom_saved.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@user_alpha2 = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"Unexpected user alpha2: %c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @is_user_regdom_saved to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_user_regdom_saved() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @user_alpha2, align 8
  %3 = getelementptr inbounds i8, i8* %2, i64 0
  %4 = load i8, i8* %3, align 1
  %5 = sext i8 %4 to i32
  %6 = icmp eq i32 %5, 57
  br i1 %6, label %7, label %14

7:                                                ; preds = %0
  %8 = load i8*, i8** @user_alpha2, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = load i8, i8* %9, align 1
  %11 = sext i8 %10 to i32
  %12 = icmp eq i32 %11, 55
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %36

14:                                               ; preds = %7, %0
  %15 = load i8*, i8** @user_alpha2, align 8
  %16 = call i32 @is_world_regdom(i8* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i8*, i8** @user_alpha2, align 8
  %20 = call i32 @is_an_alpha2(i8* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %18, %14
  %24 = phi i1 [ false, %14 ], [ %22, %18 ]
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** @user_alpha2, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = load i8*, i8** @user_alpha2, align 8
  %30 = getelementptr inbounds i8, i8* %29, i64 1
  %31 = load i8, i8* %30, align 1
  %32 = call i64 @WARN(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 signext %28, i8 signext %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %23
  store i32 0, i32* %1, align 4
  br label %36

35:                                               ; preds = %23
  store i32 1, i32* %1, align 4
  br label %36

36:                                               ; preds = %35, %34, %13
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @WARN(i32, i8*, i8 signext, i8 signext) #1

declare dso_local i32 @is_world_regdom(i8*) #1

declare dso_local i32 @is_an_alpha2(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
