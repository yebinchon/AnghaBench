; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_dev_ioctl.c_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_dev_ioctl.c_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.ifreq = type { i64* }

@SIOCGIFNAME = common dso_local global i32 0, align 4
@IFNAMSIZ = common dso_local global i32 0, align 4
@CAP_NET_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENOTTY = common dso_local global i32 0, align 4
@SIOCWANDEV = common dso_local global i32 0, align 4
@SIOCGHWTSTAMP = common dso_local global i32 0, align 4
@SIOCDEVPRIVATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dev_ioctl(%struct.net* %0, i32 %1, %struct.ifreq* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ifreq*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ifreq* %2, %struct.ifreq** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %4
  %15 = load i32*, i32** %9, align 8
  store i32 1, i32* %15, align 4
  br label %16

16:                                               ; preds = %14, %4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @SIOCGIFNAME, align 4
  %19 = icmp eq i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load %struct.net*, %struct.net** %6, align 8
  %22 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %23 = call i32 @dev_ifname(%struct.net* %21, %struct.ifreq* %22)
  store i32 %23, i32* %5, align 4
  br label %178

24:                                               ; preds = %16
  %25 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %26 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %25, i32 0, i32 0
  %27 = load i64*, i64** %26, align 8
  %28 = load i32, i32* @IFNAMSIZ, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %27, i64 %30
  store i64 0, i64* %31, align 8
  %32 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %33 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %32, i32 0, i32 0
  %34 = load i64*, i64** %33, align 8
  %35 = call i8* @strchr(i64* %34, i8 signext 58)
  store i8* %35, i8** %11, align 8
  %36 = load i8*, i8** %11, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i8*, i8** %11, align 8
  store i8 0, i8* %39, align 1
  br label %40

40:                                               ; preds = %38, %24
  %41 = load i32, i32* %7, align 4
  switch i32 %41, label %145 [
    i32 151, label %42
    i32 146, label %42
    i32 145, label %42
    i32 150, label %42
    i32 144, label %42
    i32 148, label %42
    i32 149, label %42
    i32 143, label %42
    i32 152, label %60
    i32 142, label %77
    i32 141, label %77
    i32 131, label %77
    i32 135, label %105
    i32 129, label %105
    i32 139, label %113
    i32 133, label %113
    i32 132, label %113
    i32 138, label %113
    i32 130, label %113
    i32 162, label %113
    i32 153, label %113
    i32 137, label %113
    i32 128, label %113
    i32 160, label %113
    i32 158, label %113
    i32 157, label %113
    i32 161, label %113
    i32 155, label %113
    i32 154, label %113
    i32 140, label %113
    i32 156, label %124
    i32 159, label %124
    i32 147, label %142
    i32 134, label %142
    i32 136, label %142
  ]

42:                                               ; preds = %40, %40, %40, %40, %40, %40, %40, %40
  %43 = load %struct.net*, %struct.net** %6, align 8
  %44 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %45 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %44, i32 0, i32 0
  %46 = load i64*, i64** %45, align 8
  %47 = call i32 @dev_load(%struct.net* %43, i64* %46)
  %48 = call i32 (...) @rcu_read_lock()
  %49 = load %struct.net*, %struct.net** %6, align 8
  %50 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @dev_ifsioc_locked(%struct.net* %49, %struct.ifreq* %50, i32 %51)
  store i32 %52, i32* %10, align 4
  %53 = call i32 (...) @rcu_read_unlock()
  %54 = load i8*, i8** %11, align 8
  %55 = icmp ne i8* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %42
  %57 = load i8*, i8** %11, align 8
  store i8 58, i8* %57, align 1
  br label %58

58:                                               ; preds = %56, %42
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %5, align 4
  br label %178

60:                                               ; preds = %40
  %61 = load %struct.net*, %struct.net** %6, align 8
  %62 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %63 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %62, i32 0, i32 0
  %64 = load i64*, i64** %63, align 8
  %65 = call i32 @dev_load(%struct.net* %61, i64* %64)
  %66 = call i32 (...) @rtnl_lock()
  %67 = load %struct.net*, %struct.net** %6, align 8
  %68 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %69 = call i32 @dev_ethtool(%struct.net* %67, %struct.ifreq* %68)
  store i32 %69, i32* %10, align 4
  %70 = call i32 (...) @rtnl_unlock()
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i8*, i8** %11, align 8
  store i8 58, i8* %74, align 1
  br label %75

75:                                               ; preds = %73, %60
  %76 = load i32, i32* %10, align 4
  store i32 %76, i32* %5, align 4
  br label %178

77:                                               ; preds = %40, %40, %40
  %78 = load %struct.net*, %struct.net** %6, align 8
  %79 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %80 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %79, i32 0, i32 0
  %81 = load i64*, i64** %80, align 8
  %82 = call i32 @dev_load(%struct.net* %78, i64* %81)
  %83 = load %struct.net*, %struct.net** %6, align 8
  %84 = getelementptr inbounds %struct.net, %struct.net* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @CAP_NET_ADMIN, align 4
  %87 = call i32 @ns_capable(i32 %85, i32 %86)
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @EPERM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %5, align 4
  br label %178

92:                                               ; preds = %77
  %93 = call i32 (...) @rtnl_lock()
  %94 = load %struct.net*, %struct.net** %6, align 8
  %95 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @dev_ifsioc(%struct.net* %94, %struct.ifreq* %95, i32 %96)
  store i32 %97, i32* %10, align 4
  %98 = call i32 (...) @rtnl_unlock()
  %99 = load i8*, i8** %11, align 8
  %100 = icmp ne i8* %99, null
  br i1 %100, label %101, label %103

101:                                              ; preds = %92
  %102 = load i8*, i8** %11, align 8
  store i8 58, i8* %102, align 1
  br label %103

103:                                              ; preds = %101, %92
  %104 = load i32, i32* %10, align 4
  store i32 %104, i32* %5, align 4
  br label %178

105:                                              ; preds = %40, %40
  %106 = load i32, i32* @CAP_NET_ADMIN, align 4
  %107 = call i32 @capable(i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %112, label %109

109:                                              ; preds = %105
  %110 = load i32, i32* @EPERM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %5, align 4
  br label %178

112:                                              ; preds = %105
  br label %113

113:                                              ; preds = %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %40, %112
  %114 = load %struct.net*, %struct.net** %6, align 8
  %115 = getelementptr inbounds %struct.net, %struct.net* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @CAP_NET_ADMIN, align 4
  %118 = call i32 @ns_capable(i32 %116, i32 %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %113
  %121 = load i32, i32* @EPERM, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %5, align 4
  br label %178

123:                                              ; preds = %113
  br label %124

124:                                              ; preds = %40, %40, %123
  %125 = load %struct.net*, %struct.net** %6, align 8
  %126 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %127 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %126, i32 0, i32 0
  %128 = load i64*, i64** %127, align 8
  %129 = call i32 @dev_load(%struct.net* %125, i64* %128)
  %130 = call i32 (...) @rtnl_lock()
  %131 = load %struct.net*, %struct.net** %6, align 8
  %132 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %133 = load i32, i32* %7, align 4
  %134 = call i32 @dev_ifsioc(%struct.net* %131, %struct.ifreq* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = call i32 (...) @rtnl_unlock()
  %136 = load i32*, i32** %9, align 8
  %137 = icmp ne i32* %136, null
  br i1 %137, label %138, label %140

138:                                              ; preds = %124
  %139 = load i32*, i32** %9, align 8
  store i32 0, i32* %139, align 4
  br label %140

140:                                              ; preds = %138, %124
  %141 = load i32, i32* %10, align 4
  store i32 %141, i32* %5, align 4
  br label %178

142:                                              ; preds = %40, %40, %40
  %143 = load i32, i32* @ENOTTY, align 4
  %144 = sub nsw i32 0, %143
  store i32 %144, i32* %5, align 4
  br label %178

145:                                              ; preds = %40
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @SIOCWANDEV, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %162, label %149

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @SIOCGHWTSTAMP, align 4
  %152 = icmp eq i32 %150, %151
  br i1 %152, label %162, label %153

153:                                              ; preds = %149
  %154 = load i32, i32* %7, align 4
  %155 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %156 = icmp uge i32 %154, %155
  br i1 %156, label %157, label %175

157:                                              ; preds = %153
  %158 = load i32, i32* %7, align 4
  %159 = load i32, i32* @SIOCDEVPRIVATE, align 4
  %160 = add i32 %159, 15
  %161 = icmp ule i32 %158, %160
  br i1 %161, label %162, label %175

162:                                              ; preds = %157, %149, %145
  %163 = load %struct.net*, %struct.net** %6, align 8
  %164 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %165 = getelementptr inbounds %struct.ifreq, %struct.ifreq* %164, i32 0, i32 0
  %166 = load i64*, i64** %165, align 8
  %167 = call i32 @dev_load(%struct.net* %163, i64* %166)
  %168 = call i32 (...) @rtnl_lock()
  %169 = load %struct.net*, %struct.net** %6, align 8
  %170 = load %struct.ifreq*, %struct.ifreq** %8, align 8
  %171 = load i32, i32* %7, align 4
  %172 = call i32 @dev_ifsioc(%struct.net* %169, %struct.ifreq* %170, i32 %171)
  store i32 %172, i32* %10, align 4
  %173 = call i32 (...) @rtnl_unlock()
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %5, align 4
  br label %178

175:                                              ; preds = %157, %153
  %176 = load i32, i32* @ENOTTY, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %5, align 4
  br label %178

178:                                              ; preds = %175, %162, %142, %140, %120, %109, %103, %89, %75, %58, %20
  %179 = load i32, i32* %5, align 4
  ret i32 %179
}

declare dso_local i32 @dev_ifname(%struct.net*, %struct.ifreq*) #1

declare dso_local i8* @strchr(i64*, i8 signext) #1

declare dso_local i32 @dev_load(%struct.net*, i64*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @dev_ifsioc_locked(%struct.net*, %struct.ifreq*, i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @rtnl_lock(...) #1

declare dso_local i32 @dev_ethtool(%struct.net*, %struct.ifreq*) #1

declare dso_local i32 @rtnl_unlock(...) #1

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @dev_ifsioc(%struct.net*, %struct.ifreq*, i32) #1

declare dso_local i32 @capable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
