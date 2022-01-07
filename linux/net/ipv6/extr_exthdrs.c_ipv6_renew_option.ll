; ModuleID = '/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_renew_option.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv6/extr_exthdrs.c_ipv6_renew_option.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipv6_opt_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.ipv6_opt_hdr**, %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr*, i32, i8**)* @ipv6_renew_option to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipv6_renew_option(i32 %0, %struct.ipv6_opt_hdr** %1, %struct.ipv6_opt_hdr* %2, %struct.ipv6_opt_hdr* %3, i32 %4, i8** %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.ipv6_opt_hdr**, align 8
  %9 = alloca %struct.ipv6_opt_hdr*, align 8
  %10 = alloca %struct.ipv6_opt_hdr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8**, align 8
  %13 = alloca %struct.ipv6_opt_hdr*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.ipv6_opt_hdr** %1, %struct.ipv6_opt_hdr*** %8, align 8
  store %struct.ipv6_opt_hdr* %2, %struct.ipv6_opt_hdr** %9, align 8
  store %struct.ipv6_opt_hdr* %3, %struct.ipv6_opt_hdr** %10, align 8
  store i32 %4, i32* %11, align 4
  store i8** %5, i8*** %12, align 8
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %6
  %18 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %10, align 8
  br label %21

19:                                               ; preds = %6
  %20 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %9, align 8
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi %struct.ipv6_opt_hdr* [ %18, %17 ], [ %20, %19 ]
  store %struct.ipv6_opt_hdr* %22, %struct.ipv6_opt_hdr** %13, align 8
  %23 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %13, align 8
  %24 = icmp ne %struct.ipv6_opt_hdr* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  br label %45

26:                                               ; preds = %21
  %27 = load i8**, i8*** %12, align 8
  %28 = load i8*, i8** %27, align 8
  %29 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %13, align 8
  %30 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %13, align 8
  %31 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %30)
  %32 = call i32 @memcpy(i8* %28, %struct.ipv6_opt_hdr* %29, i32 %31)
  %33 = load i8**, i8*** %12, align 8
  %34 = load i8*, i8** %33, align 8
  %35 = bitcast i8* %34 to %struct.ipv6_opt_hdr*
  %36 = load %struct.ipv6_opt_hdr**, %struct.ipv6_opt_hdr*** %8, align 8
  store %struct.ipv6_opt_hdr* %35, %struct.ipv6_opt_hdr** %36, align 8
  %37 = load %struct.ipv6_opt_hdr**, %struct.ipv6_opt_hdr*** %8, align 8
  %38 = load %struct.ipv6_opt_hdr*, %struct.ipv6_opt_hdr** %37, align 8
  %39 = call i32 @ipv6_optlen(%struct.ipv6_opt_hdr* %38)
  %40 = call i32 @CMSG_ALIGN(i32 %39)
  %41 = load i8**, i8*** %12, align 8
  %42 = load i8*, i8** %41, align 8
  %43 = sext i32 %40 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %41, align 8
  br label %45

45:                                               ; preds = %26, %25
  ret void
}

declare dso_local i32 @memcpy(i8*, %struct.ipv6_opt_hdr*, i32) #1

declare dso_local i32 @ipv6_optlen(%struct.ipv6_opt_hdr*) #1

declare dso_local i32 @CMSG_ALIGN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
