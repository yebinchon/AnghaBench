; ModuleID = '/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_describe.c'
source_filename = "/home/carl/AnghaBench/linux/security/keys/extr_request_key_auth.c_request_key_auth_describe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i8* }
%struct.seq_file = type { i32 }
%struct.request_key_auth = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"key:\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c" pid:%d ci:%zu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.key*, %struct.seq_file*)* @request_key_auth_describe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @request_key_auth_describe(%struct.key* %0, %struct.seq_file* %1) #0 {
  %3 = alloca %struct.key*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.request_key_auth*, align 8
  store %struct.key* %0, %struct.key** %3, align 8
  store %struct.seq_file* %1, %struct.seq_file** %4, align 8
  %6 = load %struct.key*, %struct.key** %3, align 8
  %7 = call %struct.request_key_auth* @dereference_key_rcu(%struct.key* %6)
  store %struct.request_key_auth* %7, %struct.request_key_auth** %5, align 8
  %8 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %9 = icmp ne %struct.request_key_auth* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %15 = load %struct.key*, %struct.key** %3, align 8
  %16 = getelementptr inbounds %struct.key, %struct.key* %15, i32 0, i32 0
  %17 = load i8*, i8** %16, align 8
  %18 = call i32 @seq_puts(%struct.seq_file* %14, i8* %17)
  %19 = load %struct.key*, %struct.key** %3, align 8
  %20 = call i64 @key_is_positive(%struct.key* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %11
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %25 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.request_key_auth*, %struct.request_key_auth** %5, align 8
  %28 = getelementptr inbounds %struct.request_key_auth, %struct.request_key_auth* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %10, %22, %11
  ret void
}

declare dso_local %struct.request_key_auth* @dereference_key_rcu(%struct.key*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i64 @key_is_positive(%struct.key*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
