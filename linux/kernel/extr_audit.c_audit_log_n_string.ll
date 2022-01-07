; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_n_string.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_n_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_n_string(%struct.audit_buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %12 = icmp ne %struct.audit_buffer* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  br label %60

14:                                               ; preds = %3
  %15 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %16 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %15, i32 0, i32 0
  %17 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i32 @BUG_ON(i32 %20)
  %22 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %23 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %22, i32 0, i32 0
  %24 = load %struct.sk_buff*, %struct.sk_buff** %23, align 8
  store %struct.sk_buff* %24, %struct.sk_buff** %10, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %26 = call i32 @skb_tailroom(%struct.sk_buff* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i64, i64* %6, align 8
  %28 = add i64 %27, 3
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sgt i32 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %14
  %34 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @audit_expand(%struct.audit_buffer* %34, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %60

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %14
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = call i8* @skb_tail_pointer(%struct.sk_buff* %42)
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %9, align 8
  store i8 34, i8* %44, align 1
  %46 = load i8*, i8** %9, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i32 @memcpy(i8* %46, i8* %47, i64 %48)
  %50 = load i64, i64* %6, align 8
  %51 = load i8*, i8** %9, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 %50
  store i8* %52, i8** %9, align 8
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %9, align 8
  store i8 34, i8* %53, align 1
  %55 = load i8*, i8** %9, align 8
  store i8 0, i8* %55, align 1
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %57, 2
  %59 = call i32 @skb_put(%struct.sk_buff* %56, i64 %58)
  br label %60

60:                                               ; preds = %41, %39, %13
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @audit_expand(%struct.audit_buffer*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
