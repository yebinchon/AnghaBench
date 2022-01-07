; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_sendmsg_update_sinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_sendmsg_update_sinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, i32, i32, i32 }
%struct.sctp_sndrcvinfo = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sctp_cmsgs = type { %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sctp_association*, %struct.sctp_sndrcvinfo*, %struct.sctp_cmsgs*)* @sctp_sendmsg_update_sinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_sendmsg_update_sinfo(%struct.sctp_association* %0, %struct.sctp_sndrcvinfo* %1, %struct.sctp_cmsgs* %2) #0 {
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_sndrcvinfo*, align 8
  %6 = alloca %struct.sctp_cmsgs*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %4, align 8
  store %struct.sctp_sndrcvinfo* %1, %struct.sctp_sndrcvinfo** %5, align 8
  store %struct.sctp_cmsgs* %2, %struct.sctp_cmsgs** %6, align 8
  %7 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %8 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %47, label %11

11:                                               ; preds = %3
  %12 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %13 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %47, label %16

16:                                               ; preds = %11
  %17 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %21 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %20, i32 0, i32 7
  store i32 %19, i32* %21, align 4
  %22 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %26 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %25, i32 0, i32 6
  store i32 %24, i32* %26, align 4
  %27 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %31 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %33 = call i32 @sctp_assoc2id(%struct.sctp_association* %32)
  %34 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %35 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %34, i32 0, i32 4
  store i32 %33, i32* %35, align 4
  %36 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %37 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %16
  %41 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %45 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  br label %46

46:                                               ; preds = %40, %16
  br label %47

47:                                               ; preds = %46, %11, %3
  %48 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %49 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %63, label %52

52:                                               ; preds = %47
  %53 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %54 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %52
  %58 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %59 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %62 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %61, i32 0, i32 2
  store i32 %60, i32* %62, align 4
  br label %63

63:                                               ; preds = %57, %52, %47
  %64 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %65 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = icmp ne %struct.TYPE_2__* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %70 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %69, i32 0, i32 0
  store i32 1, i32* %70, align 4
  %71 = load %struct.sctp_cmsgs*, %struct.sctp_cmsgs** %6, align 8
  %72 = getelementptr inbounds %struct.sctp_cmsgs, %struct.sctp_cmsgs* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sctp_sndrcvinfo*, %struct.sctp_sndrcvinfo** %5, align 8
  %77 = getelementptr inbounds %struct.sctp_sndrcvinfo, %struct.sctp_sndrcvinfo* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %78

78:                                               ; preds = %68, %63
  ret void
}

declare dso_local i32 @sctp_assoc2id(%struct.sctp_association*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
