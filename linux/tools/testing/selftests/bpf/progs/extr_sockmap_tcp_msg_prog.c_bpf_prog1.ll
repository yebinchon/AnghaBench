; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockmap_tcp_msg_prog.c_bpf_prog1.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/progs/extr_sockmap_tcp_msg_prog.c_bpf_prog1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_msg_md = type { i64, i64 }

@SK_DROP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"data length %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"hello sendmsg hook %i %i\0A\00", align 1
@SK_PASS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bpf_prog1(%struct.sk_msg_md* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_msg_md*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  store %struct.sk_msg_md* %0, %struct.sk_msg_md** %3, align 8
  %7 = load %struct.sk_msg_md*, %struct.sk_msg_md** %3, align 8
  %8 = getelementptr inbounds %struct.sk_msg_md, %struct.sk_msg_md* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  store i8* %10, i8** %4, align 8
  %11 = load %struct.sk_msg_md*, %struct.sk_msg_md** %3, align 8
  %12 = getelementptr inbounds %struct.sk_msg_md, %struct.sk_msg_md* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  store i8* %14, i8** %5, align 8
  %15 = load i8*, i8** %5, align 8
  %16 = getelementptr i8, i8* %15, i64 8
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ugt i8* %16, %17
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @SK_DROP, align 4
  store i32 %20, i32* %2, align 4
  br label %41

21:                                               ; preds = %1
  %22 = load %struct.sk_msg_md*, %struct.sk_msg_md** %3, align 8
  %23 = getelementptr inbounds %struct.sk_msg_md, %struct.sk_msg_md* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sk_msg_md*, %struct.sk_msg_md** %3, align 8
  %26 = getelementptr inbounds %struct.sk_msg_md, %struct.sk_msg_md* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = trunc i64 %28 to i8
  %30 = call i32 (i8*, i8, ...) @bpf_printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8 signext %29)
  %31 = load i8*, i8** %5, align 8
  store i8* %31, i8** %6, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = load i8*, i8** %6, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = call i32 (i8*, i8, ...) @bpf_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8 signext %34, i32 %38)
  %40 = load i32, i32* @SK_PASS, align 4
  store i32 %40, i32* %2, align 4
  br label %41

41:                                               ; preds = %21, %19
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @bpf_printk(i8*, i8 signext, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
