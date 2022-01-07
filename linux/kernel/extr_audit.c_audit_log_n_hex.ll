; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_n_hex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_audit_log_n_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_buffer = type { %struct.sk_buff* }
%struct.sk_buff = type { i32 }

@AUDIT_BUFSIZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @audit_log_n_hex(%struct.audit_buffer* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.audit_buffer*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  store %struct.audit_buffer* %0, %struct.audit_buffer** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %12 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %13 = icmp ne %struct.audit_buffer* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %75

15:                                               ; preds = %3
  %16 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %17 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %16, i32 0, i32 0
  %18 = load %struct.sk_buff*, %struct.sk_buff** %17, align 8
  %19 = icmp ne %struct.sk_buff* %18, null
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %24 = getelementptr inbounds %struct.audit_buffer, %struct.audit_buffer* %23, i32 0, i32 0
  %25 = load %struct.sk_buff*, %struct.sk_buff** %24, align 8
  store %struct.sk_buff* %25, %struct.sk_buff** %11, align 8
  %26 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %27 = call i32 @skb_tailroom(%struct.sk_buff* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i64, i64* %6, align 8
  %29 = shl i64 %28, 1
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %50

34:                                               ; preds = %15
  %35 = load i32, i32* @AUDIT_BUFSIZ, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* %8, align 4
  %38 = sub nsw i32 %36, %37
  %39 = load i32, i32* @AUDIT_BUFSIZ, align 4
  %40 = sdiv i32 %38, %39
  %41 = add nsw i32 %40, 1
  %42 = mul nsw i32 %35, %41
  store i32 %42, i32* %9, align 4
  %43 = load %struct.audit_buffer*, %struct.audit_buffer** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @audit_expand(%struct.audit_buffer* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %34
  br label %75

49:                                               ; preds = %34
  br label %50

50:                                               ; preds = %49, %15
  %51 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %52 = call i8* @skb_tail_pointer(%struct.sk_buff* %51)
  store i8* %52, i8** %10, align 8
  store i32 0, i32* %7, align 4
  br label %53

53:                                               ; preds = %66, %50
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = icmp ult i64 %55, %56
  br i1 %57, label %58, label %69

58:                                               ; preds = %53
  %59 = load i8*, i8** %10, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8, i8* %60, i64 %62
  %64 = load i8, i8* %63, align 1
  %65 = call i8* @hex_byte_pack_upper(i8* %59, i8 zeroext %64)
  store i8* %65, i8** %10, align 8
  br label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %53

69:                                               ; preds = %53
  %70 = load i8*, i8** %10, align 8
  store i8 0, i8* %70, align 1
  %71 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %72 = load i64, i64* %6, align 8
  %73 = shl i64 %72, 1
  %74 = call i32 @skb_put(%struct.sk_buff* %71, i64 %73)
  br label %75

75:                                               ; preds = %69, %48, %14
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i32 @audit_expand(%struct.audit_buffer*, i32) #1

declare dso_local i8* @skb_tail_pointer(%struct.sk_buff*) #1

declare dso_local i8* @hex_byte_pack_upper(i8*, i8 zeroext) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
