; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdbstub_msg_write.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/extr_gdbstub.c_gdbstub_msg_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@gdbmsgbuf = common dso_local global i8* null, align 8
@BUFMAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gdbstub_msg_write(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load i8*, i8** %3, align 8
  %12 = call i32 @strlen(i8* %11)
  store i32 %12, i32* %4, align 4
  br label %13

13:                                               ; preds = %10, %2
  %14 = load i8*, i8** @gdbmsgbuf, align 8
  %15 = getelementptr inbounds i8, i8* %14, i64 0
  store i8 79, i8* %15, align 1
  br label %16

16:                                               ; preds = %49, %13
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %16
  %20 = load i8*, i8** @gdbmsgbuf, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 1
  store i8* %21, i8** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* @BUFMAX, align 4
  %25 = sub nsw i32 %24, 2
  %26 = icmp sgt i32 %23, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %19
  %28 = load i32, i32* @BUFMAX, align 4
  %29 = sub nsw i32 %28, 2
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %6, align 4
  br label %33

31:                                               ; preds = %19
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %6, align 4
  br label %33

33:                                               ; preds = %31, %27
  store i32 0, i32* %7, align 4
  br label %34

34:                                               ; preds = %46, %33
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %49

38:                                               ; preds = %34
  %39 = load i8*, i8** %5, align 8
  %40 = load i8*, i8** %3, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %40, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = call i8* @hex_byte_pack(i8* %39, i8 signext %44)
  store i8* %45, i8** %5, align 8
  br label %46

46:                                               ; preds = %38
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %7, align 4
  br label %34

49:                                               ; preds = %34
  %50 = load i8*, i8** %5, align 8
  store i8 0, i8* %50, align 1
  %51 = load i32, i32* %6, align 4
  %52 = load i8*, i8** %3, align 8
  %53 = sext i32 %51 to i64
  %54 = getelementptr inbounds i8, i8* %52, i64 %53
  store i8* %54, i8** %3, align 8
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* %4, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %4, align 4
  %58 = load i8*, i8** @gdbmsgbuf, align 8
  %59 = call i32 @put_packet(i8* %58)
  br label %16

60:                                               ; preds = %16
  ret void
}

declare dso_local i32 @strlen(i8*) #1

declare dso_local i8* @hex_byte_pack(i8*, i8 signext) #1

declare dso_local i32 @put_packet(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
