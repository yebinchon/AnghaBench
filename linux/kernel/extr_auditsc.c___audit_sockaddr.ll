; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_sockaddr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_auditsc.c___audit_sockaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.audit_context = type { i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__audit_sockaddr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.audit_context*, align 8
  %7 = alloca i8*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = call %struct.audit_context* (...) @audit_context()
  store %struct.audit_context* %8, %struct.audit_context** %6, align 8
  %9 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %10 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %9, i32 0, i32 1
  %11 = load i8*, i8** %10, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %25, label %13

13:                                               ; preds = %2
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call i8* @kmalloc(i32 4, i32 %14)
  store i8* %15, i8** %7, align 8
  %16 = load i8*, i8** %7, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %35

21:                                               ; preds = %13
  %22 = load i8*, i8** %7, align 8
  %23 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %24 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %23, i32 0, i32 1
  store i8* %22, i8** %24, align 8
  br label %25

25:                                               ; preds = %21, %2
  %26 = load i32, i32* %4, align 4
  %27 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %28 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 8
  %29 = load %struct.audit_context*, %struct.audit_context** %6, align 8
  %30 = getelementptr inbounds %struct.audit_context, %struct.audit_context* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @memcpy(i8* %31, i8* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %25, %18
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.audit_context* @audit_context(...) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
