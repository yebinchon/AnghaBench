; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode.c_xfs_ilock_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 }

@_RET_IP_ = common dso_local global i32 0, align 4
@XFS_IOLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_IOLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_SHARED = common dso_local global i32 0, align 4
@XFS_MMAPLOCK_EXCL = common dso_local global i32 0, align 4
@XFS_ILOCK_SHARED = common dso_local global i32 0, align 4
@XFS_ILOCK_EXCL = common dso_local global i32 0, align 4
@XFS_LOCK_MASK = common dso_local global i32 0, align 4
@XFS_LOCK_SUBCLASS_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_ilock_nowait(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @_RET_IP_, align 4
  %9 = call i32 @trace_xfs_ilock_nowait(%struct.TYPE_6__* %6, i32 %7, i32 %8)
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %12 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %13 = or i32 %11, %12
  %14 = and i32 %10, %13
  %15 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %16 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %17 = or i32 %15, %16
  %18 = icmp ne i32 %14, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @ASSERT(i32 %19)
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %23 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %27 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %28 = or i32 %26, %27
  %29 = icmp ne i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @ASSERT(i32 %30)
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %34 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %35 = or i32 %33, %34
  %36 = and i32 %32, %35
  %37 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %38 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %39 = or i32 %37, %38
  %40 = icmp ne i32 %36, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @ASSERT(i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @XFS_LOCK_MASK, align 4
  %45 = load i32, i32* @XFS_LOCK_SUBCLASS_MASK, align 4
  %46 = or i32 %44, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = icmp eq i32 %48, 0
  %50 = zext i1 %49 to i32
  %51 = call i32 @ASSERT(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %58 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %57)
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = call i32 @down_write_trylock(i32* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %171

63:                                               ; preds = %56
  br label %78

64:                                               ; preds = %2
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %64
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %71 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %70)
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @down_read_trylock(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %76, label %75

75:                                               ; preds = %69
  br label %171

76:                                               ; preds = %69
  br label %77

77:                                               ; preds = %76, %64
  br label %78

78:                                               ; preds = %77, %63
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %78
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = call i32 @mrtryupdate(i32* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %83
  br label %149

89:                                               ; preds = %83
  br label %103

90:                                               ; preds = %78
  %91 = load i32, i32* %5, align 4
  %92 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = call i32 @mrtryaccess(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %101, label %100

100:                                              ; preds = %95
  br label %149

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %90
  br label %103

103:                                              ; preds = %102, %89
  %104 = load i32, i32* %5, align 4
  %105 = load i32, i32* @XFS_ILOCK_EXCL, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %115

108:                                              ; preds = %103
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 1
  %111 = call i32 @mrtryupdate(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %108
  br label %129

114:                                              ; preds = %108
  br label %128

115:                                              ; preds = %103
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* @XFS_ILOCK_SHARED, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 1
  %123 = call i32 @mrtryaccess(i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %120
  br label %129

126:                                              ; preds = %120
  br label %127

127:                                              ; preds = %126, %115
  br label %128

128:                                              ; preds = %127, %114
  store i32 1, i32* %3, align 4
  br label %172

129:                                              ; preds = %125, %113
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* @XFS_MMAPLOCK_EXCL, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %129
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = call i32 @mrunlock_excl(i32* %136)
  br label %148

138:                                              ; preds = %129
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @XFS_MMAPLOCK_SHARED, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 0
  %146 = call i32 @mrunlock_shared(i32* %145)
  br label %147

147:                                              ; preds = %143, %138
  br label %148

148:                                              ; preds = %147, %134
  br label %149

149:                                              ; preds = %148, %100, %88
  %150 = load i32, i32* %5, align 4
  %151 = load i32, i32* @XFS_IOLOCK_EXCL, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %159

154:                                              ; preds = %149
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %156 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %155)
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = call i32 @up_write(i32* %157)
  br label %170

159:                                              ; preds = %149
  %160 = load i32, i32* %5, align 4
  %161 = load i32, i32* @XFS_IOLOCK_SHARED, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %169

164:                                              ; preds = %159
  %165 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %166 = call %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__* %165)
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = call i32 @up_read(i32* %167)
  br label %169

169:                                              ; preds = %164, %159
  br label %170

170:                                              ; preds = %169, %154
  br label %171

171:                                              ; preds = %170, %75, %62
  store i32 0, i32* %3, align 4
  br label %172

172:                                              ; preds = %171, %128
  %173 = load i32, i32* %3, align 4
  ret i32 %173
}

declare dso_local i32 @trace_xfs_ilock_nowait(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @down_write_trylock(i32*) #1

declare dso_local %struct.TYPE_7__* @VFS_I(%struct.TYPE_6__*) #1

declare dso_local i32 @down_read_trylock(i32*) #1

declare dso_local i32 @mrtryupdate(i32*) #1

declare dso_local i32 @mrtryaccess(i32*) #1

declare dso_local i32 @mrunlock_excl(i32*) #1

declare dso_local i32 @mrunlock_shared(i32*) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
